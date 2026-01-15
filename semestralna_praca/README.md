# Dokumentácia

## 1. Návod na použitie

Zariadenie vypisuje písmena zadané užívateľom na displej poskladaný z 25 lediek (PROBES) rozmiestnených na 5x5 ploche. Písmená sú zadávané prostredníctvom klávesnice cez ich ASCII hodnotu. Podporované písmená sú iba veľké, teda ASCII hodnoty od 65 po 90 inkluzívne.

Jednotlivé tlačidlá klávesnice majú nasledujúce funkcie:
**A** – Toto tlačidlo sa nijak nepoužíva (X)
**B** – Toto tlačidlo sa nijak nepoužíva (X)
**C** – Potvrdí posledne zadanú cifru (PC)
**D** – Uloží číslo (resp. písmeno), ktoré sa skladá z dvoch zadaných cifier (UC)
**E** – Pridá medzeru (PM)
**F** – Bude opakovane zobrazovať zadaný text na displej. (Z)

Rozloženie klávesnice:
| PC | UC | PM | Z |
| 8 | 9 | X | X |
| 4 | 5 | 6 | 7 |
| 0 | 1 | 2 | 3 |

**Príklad:**
Poradie stláčania kláves pre výpis textu „AB C“:
6, C, 5 C, D, (uloží písmeno A) 6, C, 6, C, D (uloží písmeno B), E, (pridá medzeru), 6, C, 7, C, D (uloží písmeno C), F (vypíše text na displej)

**Pomôcka:**
Na pomoc s výpisom inštrukcií môžeme využiť aj tento jednoduchý Python script, ktorý z vloženého textu vytvorí vhodnú sekvenciu tlačidiel na stlačenie.

```python
def preloz_instrukcie(text: str) -> None:
    text = text.upper()
    instrukcie = []
    for c in text:
        ascii_hodnota = ord(c)
        if 65 <= ascii_hodnota <= 90:
            ascii_arr = list(str(ascii_hodnota))
            instrukcie.extend([ascii_arr[0], 'C', ascii_arr[1], 'C', 'D'])
        elif ascii_hodnota == 32:
            instrukcie.append('E')
        else:
            return print("Neplatný text: " + text)
    instrukcie.append('F')
    print(' '.join(instrukcie))
```

## 2. Programátorské informácie

### 2.1 Ovládanie displeja:

Displej sa skladá z 5x5 lediek kde každý riadok predstavuje 5 lediek a je adresovaný zvlášť bitmi adresnej zbernice 0 až 4. Teda každý riadok má svoj 8 bit register. Na to aby bolo možné niečo zobraziť na riadku, musí byť splnených niekoľko podmienok: LE = 1 a IW = 0. 

Z tohto vyplývajú adresy pre riadky: 11110b, 11101b, 11011b, 10111b, 01111b

Samotné zobrazenie je vykonané inštrukciou OUT, ktorej prvý parameter je práve adresa riadku a druhý parameter je register, ktorý obsahuje informácie o tom, čo sa má zobraziť. Napríklad pre zapnutie prvej ledky na prvom riadku: Do registra B uložíme hodnotu 10000b a vykonáme inštrukciu OUT 11110b,B

**Pripojenie displejov na adresnú zbernicu:**

| AB |
| :---: |
| 15 | 14 | 13 | 12 | 11 | 10 | 9 | 8 | 7 | 6 | 5 | 4 | 3 | 2 | 1 | 0 |
| X | X | X | X | X | X | X | X | X | X | X | LE | LE | LE | LE | LE |

**Pripojenie displejov na dátovú zbernicu:**

| DB |
| :---: |
| 7 | 6 | 5 | 4 | 3 | 2 | 1 | 0 |
| X | X | X | S1 | S2 | S3 | S4 | S5 |
| X | X | X | S1 | S2 | S3 | S4 | S5 |
| X | X | X | S1 | S2 | S3 | S4 | S5 |
| X | X | X | S1 | S2 | S3 | S4 | S5 |
| X | X | X | S1 | S2 | S3 | S4 | S5 |

S1 = Prvý stĺpec displeja, S2 = Druhý stĺpec displeja, S3 = Tretí stĺpec displeja, S4 = Štvrtý stĺpec displeja, S5 = Piaty stĺpec displeja

### 2.2 Ovládanie klávesnice

Klávesnicu je možné ovládať pomocou inštrukcie INN. Riadky sú adresované
bitmi adresnej klávesnice 0 až 4. Riadok je aktívny ak je zapojený na log 0. Z toho vychádza, že adresy riadkov sú 0111b, 1011b, 1101b, 1110b.

Po načítaní hodnoty riadku sa dátovú zbernicu vyhodnotí stav stĺpcov daného riadku. Keďže klávesnica má 4 stĺpce tak sú pre nás podstatné hlavne tie 4 bity. Pričom platí, že tlačidlo je stlačené pokiaľ má log 0. 

Napríklad pre zistenie stlačenia tlačidla D:
```asm
INN A,0111b
CMI A,1011b
```

**Pripojenie riadkov na adresnú zbernicu:**

| AB |
| :---: |
| 15 | 14 | 13 | 12 | 11 | 10 | 9 | 8 | 7 | 6 | 5 | 4 | 3 | 2 | 1 | 0 |
| X | X | X | X | X | X | X | X | X | X | X | X | R4 | R3 | R2 | R1 |

R1 = Prvý riadok klávesnice, R2 = Druhý riadok klávesnice, R3 = Tretí riadok klávesnice, R4 = Štvrtý riadok klávesnice

**Pripojenie stĺpcov na dátovú zbernicu:**

| DB |
| :---: |
| 7 | 6 | 5 | 4 | 3 | 2 | 1 | 0 |
| X | X | X | X | S1 | S2 | S4 | S4 |

S1 = Prvý stĺpec klávesnice, S2 = Druhý stĺpec klávesnice, S3 = Tretí stĺpec klávesnice, S4 = Štvrtý stĺpec klávesnice


### 2.3 Ovládanie pamäte

Pamäť je zapojená na bity adresnej zbernice 0 až 7a k dispozícii je 2^8 = 256 8-bitových slov.

Pamäť je možné ovládať viacerými spôsobmi. Ak potrebujeme zapísať dáta na konštantné miesto v pamäti použijeme inštrukciu LMI, ktorej prvej prvý parameter je register a druhý parameter je adresa. Pre výpis z konštantného miesta sa použije inštrukcia SMI, kde je prvý parameter adresa a druhý register.

Do pamäti vieme zapisovať aj dynamicky a to podľa toho na akú adresu smeruje smerník MP. Pre takéto zapisovanie použijeme inštrukciu SMR, ktorej parameter je register a pre výpis použijeme inštrukciu LMR, ktorej parameter je register.

Pre manipuláciu s MP smerníkom potrebujeme využiť inštrukcie na manipuláciu 16 bitového registra. Medzi také inštrukcie patrí aj: 
`INX` – Ktorá inkrementuje obsah registra o 1. 
`DCX` – Ktorá dekrementuje obsah regsitra o 1. 
`MXI` – Ktorá nastaví obsah registra na danú konštantu.
`MVX` – Ktorá skopíruje do/z dvoch 8 bitových registrov do 16 bitového.

**Pripojenie pamäte na adresnú zbernicu:**

| AB |
| :---: |
| 15 | 14 | 13 | 12 | 11 | 10 | 9 | 8 | 7 | 6 | 5 | 4 | 3 | 2 | 1 | 0 |
| X | X | X | A12 | A11 | A10 | A9 | A8 | A7 | A6 | A5 | A4 | A3 | A2 | A1 | A0 |

**Pripojenie pamäte na dátovú zbernicu:**

| DB |
| :---: |
| 7 | 6 | 5 | 4 | 3 | 2 | 1 | 0 |
| DQ7 | DQ6 | DQ5 | DQ4 | DQ3 | DQ2 | DQ1 | DQ0 |
