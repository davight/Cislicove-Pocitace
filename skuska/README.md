# História počítačov

- 1600 John Napier – násobenie a delenie pomocou logaritmov• 1623 Wilhelm

- Schickard – prvý mechanický kalkulátor

- 1642 Blaise Pascal – sčítanie, odčítanie 

- 1671 Gottfried Wilhelm Leibniz – násobenie, delenie, dvojková sústava

- 1801 Joseph Jacquard– programovateľný tkací stroj – dierne štítky 

- 1851 Charles Xavier Thomas – hromadne vyrábaný mechanický kalkulátor

- 1938: Alan Mathison Turing– definícia univerzálneho počítača tzv. Turingov stroj– dizajn el.-mech. stroja „Bombe“ – dešifrovanie Enigmy 

- 1943-44: Colossus Mark 1 – prvý čisto elektronický počítač– dešifrovanie nemeckých šifier

- Konrad Zuse:
  
  - 1938: Z1 – binárny mechanický kalkulátor 
  - 1939: Z2 – vylepšený Z1 (relé)
  - 1941: Z3 – prvý plne funkčný elektromechanický počítač – Turing complete
    - Prvý algoritmický (high-level) programovací jazyk “Plankalkül” – prvý program na hranie šachu

- 1942: John Atanasoff a Clifford Berry 
  
  - – elektronický počítač (ABC) na riešenie sústavy lineárnych rovníc
  - – binárny systém, – regeneratívna pamäť (60 čísiel po 50 bitov)
  - – oddelenie pamäte a výpočtových funkcií
  - – 300 elektróniek, 300 kg
  - – 30 operácií sčítanie/odčítanie za 1 s

- 1944: MARK-1 (IBM - Aiken) 
  
  - – reléový samočinný počítač (elektromechanické relé)
  - – 5 ton, 765 000 častí
  - – sčítanie a odčítanie 0.3s, násobenie 6s, delenie 15s, logaritmus a sínus > 1 min
  - – „bug“– prvý debugger: Grace Hopper 

- 1946: ENIAC (Mauchly a Eckert) 
  
  - – 18 000 elektrónok, 70 000 odporov
  - – 6 000 manuálnych prepínačov, 5 miliónov cínových spojov 
  - – plocha 167 m2, 30 ton, príkon 150 kW
  - – 1 sek.: 5 000 súčtov, 385 násobení, 40 delení, 3 odmocniny
  - – program napevno zadrôtov

- 1945: John von Neumann
  
  - – uloženie programu v tej istej pamäti ako dáta(vnútorné riadenie)
  - – popis štruktúry univerzálneho počítača

## Ďalšie počítače

- – Baby (1948)
- – EDSAC, EDVAC (nasledovník ENIAC-u)
- – MESM (1950, Lebedev, Kyjev) 
- – UNIVAC (1951) – prvý hromadne vyrábaný počítač

## Míľniky vo vývoji počítačov

- 1947-48 – Tranzistor
- 1958 – Integrovaný obvod - Robert Noyce, Jack Kilby (Nobelova cena za rok 2000)  
- 1971 – Intel 4004 – prvý univerzálny mikroproc., 4-bitový, 3x4 mm, 2300 MOS tranzistorov, výkon asi ako ENIAC.  Zakladatelia INTELu: Robert Noyce, Gordon Moore

## Míľniky vo vývoji počítačov

- 1976 – prvých 50 počítačov APPLE
- 1978 – 16-bitový procesor 8086
- 1981 – prvý osobný počítač od IBM
- 1985 – ARM1

## Generácie počítačov

- Nultá generácia: mechanické a elektromechanické počítače
- Prvá generácia (do roku 1956)
  - – elektrónky
  - – jednoúčelové počítače
  - – len strojový kód
  - – nízka spoľahlivosť
  - – veľké prvky, veľká spotreba energie
  - – pomalé 
  - – malá pamäť
- Druhá generácia (cca do roku 1963)
  - – polovodiče
  - – assembler
  - – program uložený v pamäti
  - – kompilátory Fortran, Cobol
  - – miniaturizácia– nižšia spotreba
- Tretia generácia (cca do roku 1971)
  - – integrované obvody
  - – jednoduché operačné systémy
  - – multiprocessing, multiuser
  - – ďalšie zrýchlenie, zmenšenie rozmerov, zväčšenie kapacity pamäte
- Štvrtá generácia (do súčasnosti)
  - – integrované obvody s technológiou VLSI, ULSI
  - – všetky hlavné časti počítača (CPU, pamäť, V/V) umiestnené na jednom čipe
  - – zdieľanie dát – LAN, WAN
  - – paralelné spracovanie dát
  - – všadeprítomnosť počítačov – od mikrovlniek po Space Station
- Piata generácia?
  - – masívny paralelizmus: kvantové počítače, DNA počítače
  - – optické počítače
  - – nanotechnológie
  - – supravodivosť
  - – spolupráca počítačov a živých organizmov
  - – umelá inteligencia

# Architektúra počítačov

## Vlastnosti počítača von-Neumannovho typu:

- – časti počítača: riadiaca, aritmetická, vstupná, výstupná jednotka a pamäť
- – štruktúra počítača je nezávislá na type riešenej úlohy, počítač sa programuje obsahom pamäti
- – inštrukcie a údaje sú v tej istej pamäti
- – pamäť je rozdelená do buniek rovnakej veľkosti, poradové čísla – adresy
- – činnosť počítača je riadená programom (postupnosťou inštrukcií) 
- – inštrukcie sa vykonávajú postupne tak ako sú zapísané v pamäti. Počítač je riadený “tokom inštrukcií”
- – zmena vykonávania programu – podmienený alebo nepodmienený skok
- – inštrukcie aj údaje – dvojková sústava

## Základný pracovný cyklus

- – výber inštrukcie z pamäte (fetch)
- – dekódovanie inštrukcie (decode)
- – výber operandov (read)
- – vykonanie operácie (execute)
- – zápis výsledku (write)

## Von-Neumannova architektúra

- spoločná pamäť
- efektívnejšie využitie pamäte
- odlíšenie programu a dát len implicitné
- možnosť zámeny, prepisu programu– Java (JIT), kompilátory– hackovanie
- úzke hrdlo – zbernica (malá priepustnosť,  veľká pamäť, rýchly CPU)
- procesor neužitočne čaká (malý program, veľké dáta)
  Čiastočné riešenie:
- Cache pamäť
- zásobník v CPU

## Harvardská architektúra

- rôzne pamäte  (veľkosť, typ, šírka slova)
- paralelizmus
- jednoúčelové počítače– mikropočítače (mikrokontroléry - MCU) Digitálne signálne procesory (DSP)

## Modifikovaná Harvardská architektúra

- moderné univerzálne počítače
- kombinácia výhod
- navonok: Von-Neumann vnútri: Harvard

## CISC

- – Complex Instruction Set Computers
- – veľký počet špecializovaných inštrukcií
- – rôzna veľkosť aj rýchlosť inštrukcií
- – malý počet univerzálnych registrov
- – memory-to-memory architektúra
- – zložitejší hardvér, jednoduchší softvér

## RISC

- – Reduced Instruction Set Computers
- – „malý počet“ rýchlych inštrukcií
- – rovnaká veľkosť aj rýchlosť inštrukcií
- – väčší počet univerzálnych registrov
- – load/store architektúra (register-to-register)
- – jednoduchší hardvér, dlhší kód

## VLIW

- – Very Long Instruction Word

## NISC

- – No Instruction Set Computing– žiadne inštrukcie ani mikrokód
- – kompilátor generuje „nanokód“ – priamo ovláda časti procesora
- – jednoduchšia riadiaca časť procesora
- – vyšší výkon, lepšie využitie zdrojov
- – jednoduchší návrh (netreba inštrukčnú sadu)

<small>

 Vytvorte pravdivé výroky:
  - CISC procesory sú typu memory-to-memor
  - Inštrukcie v CISC procesoroch umožnujú tvorbu kratších programov
  - RISC procesory obsahujú väčší počet univerzálnych registrov
  - Inštrukcie v RISC procesoroch majú zvyčajne rovnakú veľkost
  - CISC procesory nemajú špecializovné inštrukcie na prístup do pamäte

 Priraďte vlastnosti architektúre procesora:
  - jednoduché inštrukcie RISC
  - rôzna veľkost inštrukcií CISC
  - zvyčajne jeden strojový cyklus na inštrukciu RISC
  - nižší počet spečializovaných registrov CISC
  - inštrukcie typu register to register RISC

 Priraďte vlastnosti architektúre procesora:
  - komplexné inštrukcie CISC
  - zvyčajne väčší počet strojových cyklod na inštrukciu CIS
  - väčší počet univerzáômych registrov RISC
  - inštrukcie typu memory to memory CIS
  - dlhší kód RIS

Priraďte vlastnosti architektúre procesora
 - komplexné inštrukcie CISC
 - rôzna veľkost inštrukcii CIS
 - zvyčajne viac strojových cyklov na inštrukciu CISC
 - nižsí počet špecializovaných registrov CISC
 - väčší kód RIS

Priraďte vlastnosti architektúre procesora
 - zabudovanie komplexných inštrukcií do hardveru CIS
 - jednoduché inštrukcie RISC
 - rovnaká veľkost inštrukcií RIS
 - samostatné inštrukcie na prácu s pamäťou RIS
 - kratší kód

Rozhodnite, ktoré výroky sú pravdivé
 - ~~Von-Neumannova architektúra používa dva oddelené pamätové priestory.~~
 - ~~Harvardská architektúra neumožňuje použiť rôzne typy pamätí pre program a dáta.~~
 - Komunikácia s pamäťou je úzkym hrdlom von-Neumannovej architektúr
 - Harvardská architektúra je rýchlejši
 - V Harvardskej architektúre nie je možné použiť Just in Time compilatio

Rozhodnite, ktoré výroky sú pravdivé
 - ~~Harvadská architektúra je pomalšia.~~
 - ~~V Harvardskej architektúre je možné prepísať program za behu.~~
 - ~~Komunikácia s pamäťou je úzkym hrdlom Harvadskej architektŕuy.~~
 - Harvadská architektúra umožnuje použiť rôzne typy pamätí pre program a dáta
 - Von-Neumannova architektúra používa jednu pamäť pre program aj údaje

Vlastnosti počítača von-Neumannovho typu
 - ~~počítač je riadený tokom dát~~
 - ~~počítač sa sklada z časti riadiaca jednotka, pamäť, vstupná a výstupná jednotka~~
- inštrukcie a ich operandy sú v tej istej pamäti
 - poradové čísla buniek pamäte sa používaju ako ich adres
 - štruktúra počítača je nezavísla na type riešenej úloh
 - na reprezentáciu inštrukcií aj údajov sa používa dvojková sústava

Vlastnosti počítača von-Neumannovho typu
 - ~~na reprezentáciu inštrukcií aj údajov sa používa desiatková sústava~~
 - ~~počítač je riadený tokom inštrukcií~~
 - ~~progarm a dáta sú umiestnené v oddelených pamätiach~~
 - pamäť je rozdelená do buniek rovnakej veľkosti
 - počítač sa programuje obhsajom pamät
 - počítač sa skladý z častí: riadiaca jednotka, aritmetická jednotka, vstupno-výstupná a pamä

Zoraďte kroky pracovného cyklu von-Neumannovho počítač
 1. Fetch
 2. Decode
 3. Read
 4. Execute
 5. Write

Vytvorte pravdivé výroky
 - Šírka zbernice v Harvardskej architektúre nemusí byť rovnaká
 - Von-neumannova architektúra umožňuje tvorbu seba modifikujúcich programov
 - Jednoduché mikropočítače využívajú najmä Harvadskú architektúru
 - Modifikovaná Harvardská architektúra znamená, že počítače majú naovnok von-Neumannovu architektúru a vnútri Harvardsk
 - Von neumannova architektúra neumožnuje súcasný prenos inštrukcií a dát
</small>

# Procesor 8086

## Prečo?
-  dostatočne jednoduchý
-  základ architektúry x86

## predchodcovia
- • Intel 4004 (1971)– 4-bit., 12b AB
- • Intel 8008 (1972) – 8-bit., 14b AB
- • Intel 8080 (1974) – 16b AB (PMI-80, PMD 85 ...)

## Procesor Intel iAPX 432 
- podpora objektových jazykov (Ada)
- podpora rôznych dátových štruktúr
- "stack machine" – „neviditeľné“ všeobecné registre
- garbage collector, multitasking, správa pamäte v hardvéri
- modulárne rozšírenie, fault tolerance, veľmi veľké aplikácie,  vysoká spoľahlivosť a bezpečnosť

## Intel iAPX 432 - problémy
- nižšia efektívnosť prvej implementácie
- spočiatku slabá optimalizácia Ada kompilátora
- Výsledok:
	- drahý počítač - cca 1/4 výkonu 80286
	- výrobcovia zanevreli na takéto riešenia

## Procesor 8086
- 1978 – prvý z rady procesorov x86
- 29 000 tranzistorov, 5-10 MHz
- 16 bitový (šírka dátovej zbernice)
- adresovanie 1 MB pamäte - 20 bitov adresnej zbernice (220 = 1 MB)
- segmentová a offsetová adresa

## Výpočet fyzickej adresy
- Adresa = 16 * Seg.Adr. + Off.Adr. 
- Adresa = (Seg.Adr. << 4) + Off.Adr.

## Pamäť v 8086
- Pamäťové modely:
	- Tiny (64k všetko)
	- Small (64 kód, 64 dáta)
	- Compact (64, >64)
	- Medium (>64, 64)
	- Large (>64, >64)
	- Huge (>64, >64, >64 pole)
   
## Hlavné časti procesora 8086
- BIU – Bus Interface Unit (jednotka pre styk so zbernicou)
- EU – Execution Unit  (výkonná jednotka)
- Úlohy BIU
	- – načítavanie inštrukcií do zásobníka
    - – výpočet fyzickej adresy
    - – vykonávanie operácií na zbernici podľa požiadaviek EU
- Úlohy EU 
	- – načítanie inštrukcie zo zásobníka, jej dekódovanie a vykonanie
    - – predávanie častí adresy do BIU
    - – preberanie operandov z BIU a odovzdanie výsledkov do BIU
    
## Pracovný cyklus procesora 8086
- Fetch – načítanie inštrukcie z pamäte
- Decode – dekódovanie inštrukcie
- (Read) – načítanie operandu z pamäte
- Execute – vykonanie inštrukcie
- (Write) – zápis výsledku do pamäte

## Registre procesora 8086
- AX – akumulátor, hlavný pracovný register
- BX – bázový register, dá sa použiť na indexovanie
- CX – čítač cyklov, posunov, rotácií 
- DX – dátový register

Rozdelenie 16-bit. registrov na 8-bitové:
AX  →  AH,  AL

- SP (Stack Pointer) – ukazovateľ zásobníka
- BP (Base Pointer) – ukazovateľ bázy (predávanie parametrov podprogramom)
- SI (Source Index) – index ukazujúci na zdrojové dáta (reťazec)
- DI (Destination Index) – index ukazujúci na cieľové miesto (reťazec)
- CS (Code Segment) – adresa segmentu obsahujúceho program (kód)
- DS (Data Segment) – segmentová adresa údajov
- SS (Stack Segment) – segmentová adresa zásobníka 
- ES (Extra Segment) – doplnkový register, dá sa použiť ako dátový segment
- IP (Instruction Pointer) – offsetová adresa nasledujúcej inštrukcie

## Registre príznakov F
- DF = 1 – samodekrementácia pri reťazových inštrukciách = 0 – samoinkrementácia 
- IF (Interrupt Flag) – 1 – povolenie externého (maskovateľného)  prerušenia
- TF (Test Flag) – 1 – uvedie procesor do testovacieho režimu pre ladenie

## Inštrukcie procesora 8086
- inštrukcie pre prenos dát 
	- medzi registrami (MOV BX,AX)
    - register – pamäť (MOV BX,adr)
    - register – zásobník (PUSH AX;  POP CX)
    - register – V/V zariadenie (OUT adr,AL;  IN AL,DX)

- aritmetické operácie – súčet, rozdiel, násobenie, delenie, inkrementácia, dekrementácia (ADD, SUB, MUL, DIV, INC ...)
- logické operácie – log. súčet, súčin, posuny, rotácie, porovnanie a testovanie (AND, XOR, CMP, TEST, ROL, RCL ...)
- manipulácia s blokom dát – reťazcové inštrukcie (MOVSB, STOSB ...)
- skokové inštrukcie – podmienené a nepodmienené skoky, volanie podprogramov a návrat z nich (JMP, JGE, JZ, CALL, RET ...)
- riadenie procesora – inštrukcie na nastavenie/nulovanie príznakov, povolenie/zakázanie externého prerušenia ... (CLD, STD, CLI ...)

<small>

Označte pravdivé výroky o procesore 808
 - ~~Je to procesor typu RISC~~
 - ~~Procesor 8086 ukladá viac bajtové hodnoty spôsobom big endian~~
 - Veľkost segmentu je vzdy 64k
 - Vykonná jednotka a jednotka pre styk so zbernicoiu môzu pracovať súčasn
 - Všetky registre procesora sú 16-bitov

 Ako je možné vypočítať fyzickú adresu v precesore 8086? 
  - FYZ = 16 * SEG + OFF
  - FYZ = OFF + (SEG zobacik dolava, zobacik dolava 4)

 Posúďte pravdivosť výrokov o procesore 8086:
  - Procesor 8086 ukladá viac bajtové hodnoty pomocou Big endian = nepravda
  - Veľkost segmentu je vždy 64kb = pravda
  - Všetky registre procesora sú 16-bitové = pravda
  - Je to procesor typu RISC = nepravda
  - Výkonná jednotka a  jednotka pre styk so zbernicou môžu pracovať súčasne = pravd

 Vypočítajte fyzickú adresu procesora 8086 ak segmentová adresa je 0x8352 a ofsetová adresa je 0x0012.
  - 0x8353

 Priraďte činnosti hlavným častiam procesora 8086:
  - Čítanie inštrukcie zo zásobníka EU
  - Výpočet fyzickej adresy BIU
  - Zapisovanie inštrukcie do zásobníka BIU
  - Dekódovanie a vykonanie inštrukcie EU
  - Vykonávanie operácií na zbernici BIU

 Vypočítajte fyzickú adresu procesora 8086 ak segmentová adresa je 0x4311 a ofsetová adresa je 0x0025. Výsledok zadajte v hexadecimálnom tvare.
  - 4313

 Priraďte popisy hlavným častiam procesora 8086.
 
 <img width="429" height="303" alt="image" src="https://github.com/user-attachments/assets/05ebd143-25e1-4cf0-88cc-e11084988be6" />

 </small>

# Komunikácia v počítači 

- Jedna z najdôležitejších úloh v počítači
- Základné spôsoby komunikácie:
	- • polygonálny
	- • hviezdicový
	- • zbernicový

## Polygonálny spôsob komunikácie
- Prepojenie všetkých dvojíc zariadení, medzi ktorými môže dôjsť ku komunikácii 
- Výhody: Rýchlosť, Spoľahlivosť
- Nevýhody: Technická a finančná náročnosť, Zlá rozšíriteľnosť systému

## Hviezdicový spôsob komunikácie
- Centrálna jednotka je prepojená s ostatnými časťami počítača  pomocou samostatných komunikačných ciest 
- Výhody: Rýchlosť, Odolnosť voči poruche, Jednoduchá rozšíriteľnosť
- Nevýhody: Obmedzená rozšíriteľnosť, Nutnosť asistencie centrálnej jednotky, Nemožnosť paralelnej komunikácie

## Zbernicový spôsob komunikácie
- Výhody: Rozšíriteľnosť, Komunikácia zariadení bez procesora, Technická a finančná nenáročnosť
- Nevýhody: Nízka odolnosť voči poruchám, Nemožnosť paralelnej komunikácie

## Rozdelenie zberníc
- Podľa spôsobu riadenia: Single Master, Multi Master
- Podľa synchronizácie prenosu: Synchrónne zbernice, Asynchrónne zbernice
- Podľa tvaru údajov: Paralelné zbernice (ISA, PCI, IDE/PATA), Sériové zbernice (USB, PCIe, SATA, FireWire)
- Podľa časového multiplexu: Multiplexované, Nemultiplexované
- Podľa použitia: Interné (PCIe, SATA, SCSI, SMBus),Externé (eSATA, IEEE 1394 – FireWire, RS-485, USB)

## Šírka zbernice
- Fyzická šírka – počet vodičov
- Logická šírka (len pre adresnú zbernicu) – počet možných adries a – fyzická šírka, 2a – logická šírka
- 2 adresné priestory: pamäťový , vstupno-výstupný

## Kódovanie zberníce
- Adresná a údajová zbernica – binárne (každá kombinácia má význam)
- Riadiaca zbernica - 1 z n (každý riadiaci signál má vlastný vodič)

## Základné charakteristiky zbernice
-  Šírka slova (šírka dátovej zbernice)
-  Dĺžka pracovného cyklu
-  Pracovná frekvencia Hz
-  Prenosová rýchlosť MB/s
-  Signálový sled
-  Rôzne technické parametre – maximálna dĺžka zbernice, maximálny počet pripojených zariadení, spôsob budenia zbernice, charakteristické impedancie ...

## Spôsoby prideľovania zbernice
- Je potrebný Arbiter zbernice: Postupná obsluha, Obsluha na výzvu, Obsluha podľa priority

<small>

Vyberte pravdivé výroky.
 - ~~Seriova zbernica používa väčší počet vodičov než pararelná~~
 - ~~Na multiplexovanej zbernici sa význam signálov v čase nemení~~
 - Veľkost adresného priestoru je 2 na a (a = počet vodičov na zbernici)
 - Riadiaca zbernica používa kodovanie 1 z n
 - Na asychronnej zbernici je prenos synchonizovaný odpoveďou

Vlastnosti polygonálneho spôsobu komunikácie. 
 - ~~Vysoká rýchlosť komunikácie častí s centálnou jednotkou~~ 
 - ~~Technicky nenáročné riešenie~~ 
 - Vysoká spoľahlivosť
 - Takmer nemôžné rozšírenie systému o ďalšiu časť
 - Komunikácia medzi ľubovnolnými časťami bez tretej strany

Vlastnosti hviezdicového spôsobu komunikácie. 
 - ~~Technicky a finančne náročné riešenie~~ 
 - ~~Takmer neobmedzená rozšíriteľnosť systému~~ 
 - ~~Možnosť pararelnej komunikácie viacerých zariadení~~ 
 - Odolnosť systému voči prerušeniu jedného komunikačného kanála
 - Každé zariadenie môže priamo komunikovať len s centrálnou jednotkou

Vlastnosti polygonálneho spôsobu komunikácie
 - ~~Jednoduché pridanie ďalšieho zariadenia~~
 - ~~Nízka odolnosťo voči poruchám~~
 - ~~Priame spojenie len s centrálnou jednotkou~~
 - Technicky náročné riešenie
 - Možnosť pararelnej komunikácie viacerých zariadení

Vlastnosti hviezdicového spôsobu komunikácie. 
 - ~~Technicky a finančne náročné riešenie~~ 
 - ~~Takmer neobmedzená rozšíriteľnosť systému~~ 
 - ~~Možnosť pararelnej komunikácie viacerých zariadení~~ 
 - Prerušenie jedného komunikačného kanála nemusí znefukčniť celé zariadenie
 - Každé zariadenie môže priamo komunikovať len s centrálnou jednotkou

 Vlastnosti zbernicového spôsobu komunikácie.
  - ~~Možnosť pararelnej komunikácie viacerých dovjích zariadení~~
  - ~~Porucha komunikačného kanála nemusí spôsobiť pád systému~~
  - Nízka odolnosť voči poruchám 
  - Možnosť komunikácie medzi zariadeniami bez účasti procesora 
  - Takmer neobmedzená a jednoduchá rozšíriteľnost systému

Priraďte každej časti zbernice jej funkciu.
 - Adresná zbernica = určuje s kým procesor komunikuje
 - Dátová zbernica = určuje aké informácie sú prenášané
 - Riadiaca zbernica = rozhoduje čo a kedy sa má uskutočniť

 Pomenujte spôsoby prideľovania zbernice.

<img width="731" height="538" alt="image" src="https://github.com/user-attachments/assets/02e0a5d6-0a01-4e2a-9234-8c5f0e7abf1d" />

Vyberte pravdivé výroky. 
 - ~~Dátová a riadiaca zbernica používajú kódovanie 1 z n~~
 - ~~Adresná zbernica určuje kedy a čo sa má urobiť~~
 - Adresná zbernica používa binárne kódovanie.
 - Fyzická šírka zbernice je zhodná s počtom vodičov zbernice
 - Na Single-Master zbernici je len jedno zariadenie, ktoré môže riadiť komunikáciu.

Vytvorte pravdivé výroky o zberniciach:
  - Adresná časť zbernice určuje adresu pamäte / VV zaradenia
  - Polygonálny spôsob komunikacie je najrýchlejší
  - Riadiaca zbernica je kôdovaná jednotlivo
  - Pri komunikácií typu Single Master nie je potrebný arbiter
  - Na dátovej zbernici majú význam všetky kombinácie núl a jednotiek
</small>
  
  # Komunikácia po zbernici
 - Protokol
- Obvod riadiaci komunikáciu – Master
- Riadiace signály: MEMW, MEMR, IOW, IOR

## Znázornenie signálov
- Stabilná úroveň signálu --\__/--
- Zbernica XX___XX
- Stav vysokej impedancie --.-.-..-

## Synchrónna komunikácia
- Presne daný časový harmonogram
- Rýchla => predovšetkým komunikácia s pamäťou

## Asynchrónna komunikácia
- Prenos synchronizovaný odpoveďou
- Handshaking
- Potrebný ďalší riadiaci signál – READY
- Vhodná pre komunikáciu s pomalými zariadeniami

<small>

 Priraďte popisy k jednotlivým krokom komunikačného protokolu: (AB, DB, MEMW)

<img width="328" height="184" alt="image" src="https://github.com/user-attachments/assets/813b82a7-2420-4938-a4f1-2d86979758c4" />

  - 1 Procesor zapíše adresu
  - 2 Procesor zapíše dáta
  - 3 Procesor určí, čo má urobiť
  - 4 Procesor zruší príkaz
  - 5 Procesor ruší dáta a adresu
  
  Priraďte popisy k jednotlivým krokom komunikačného protokolu: (AB, DB, IOW, READY)

<img width="357" height="202" alt="image" src="https://github.com/user-attachments/assets/bc0cc89d-1d11-4c3c-a602-7afd42fc36ec" />
  
  - 2 Procesor určí čo má urobiť
  - 3 Zariadenie zapíše údaje
  - 4 Zariadenie oznámi zapísanie údajov
  - 5 Procesor ruší príkaz
  - 6 Zariadenie sa odpojí od zbernice

  Priraďte popisy k jednotlivým krokom komunikačného protokolu: (AB, DB, IOW, READY)

<img width="390" height="215" alt="image" src="https://github.com/user-attachments/assets/84968346-3aca-46ff-aaa4-f1e9d7b952b1" />
  
  - 1 Procesor zapíše adresu
  - 2 Procesor zapíše dáta
  - 3 Procesor určí čo sa má robiť
  - 4 Procesor čaká na žiadosť o predĺženie zápisu
  - 5 Procesor ruší príkaz
  
  Vyberte, ktoré kroky robí procesor: (AB, DB, IOR, READY)

  <img width="417" height="163" alt="image" src="https://github.com/user-attachments/assets/6238e2ed-2ce0-4537-b060-b42a22b794ef" />

  - 1
  - 2
  - ~~3~~
  - ~~4~~
  - 5
  - ~~6~~
  - ~~7~~
  
  Vyberte, ktoré kroky robí pamäť: (AB, DB, MEMR)

  <img width="374" height="177" alt="image" src="https://github.com/user-attachments/assets/eecc910a-b352-441e-9b46-af6d56bad072" />

  - ~~1~~
  - ~~2~~
  - ~~3~~
  - 4
  - ~~6~~
  - ~~7~~
  - 8
  
 Vyberte, ktoré kroky robí procesor:

 <img width="463" height="193" alt="image" src="https://github.com/user-attachments/assets/80345094-543a-4f6b-a8db-531d72f706dd" />

  - 1
  - 2
  - 3
  - ~~4~~
  - 6
  - ~~7~~
  - 8
  
  Vyberte, ktoré kroky robí V/V zariadenie:

  <img width="305" height="157" alt="image" src="https://github.com/user-attachments/assets/8c69a970-96b6-443b-a64d-954bb71c7f86" />

  - ~~1~~
  - ~~2~~
  - 3 
  - 4
  - ~~5~~
  - 6
  - 7

  Priraďte názvy k obrázkom:

  <img width="427" height="281" alt="image" src="https://github.com/user-attachments/assets/3087fadf-1d7b-4b97-a2f5-97dcd05731ee" />

  </small>
  
  # Vstupno výstupný podsystém
  
## Komunikácia počítača s okolím
- Úlohy periférnych zariadení: komunikácia s obsluhou, pripojenie externých pamätí, komunikácia s inými systémami

## Pripojenie v-v zariadenia na zbernicu
- Adaptér: Konverzia dát, Vyrovnávacia pamäť, Zisťovanie stavu zariadenia

## Pripojenie v-v zariadenia na zbernicu
- Jednoduchý adaptér – register 
- Zložitejší adaptér – samostatný procesor, vyrovnávacia pamäť údajov , vyrovnávacia pamäť riadenia, oddeľovač riadenia
- Sériový port – obvod 16550
- Paralelný port – obvod 8255

## Komunikácia procesora s v-v zariadením
- Základné spôsoby komunikácie:
	- priame riadenie procesorom
	- komunikácia s využitím prerušenia
	- priamy prístup do pamäte

## Priame riadenie procesorom
- Výhody: Rýchlosť odozvy, Jednoduchosť
- Nevýhody: Procesor je nevyužitý, Nemusí vždy zareagovať (ak je viac zar.)

## Prerušenie
- Výhody: Efektívne využitie času procesora
- Nevýhody: Pomalšie než priame riadenie, Technicky náročnejšie (procesor aj zariadenie)

## Priamy prístup do pamäte – DMA
- Nie je potrebná spolupráca procesora (procesor je „odpojený“ od zbernice)
- Rýchlosť
- Technická náročnosť
## Rozdelenie v/v prenosov
- Prenosy s účasťou procesora: Nepodmienené, Podmienené
- Prenosy bez účasti procesor

<small>

  Rozhodnite, ktoré výroky o prerušeniach sú pravdivé.
  - ~~Softvérové prerušenia slúžia na obsluhu výnimiek v programe~~
  - ~~Obslužný program prerušenia nemôže byť prerušený iným prerušením~~
  - Vnútorné prerušenia nie je možné zakázať
  - Softvérové prerušenia majú vyššiu prioritu než hardvérové
  - Hardverové prerušenia sú asynchronne a maskovatelne
  
  Rozhodnite, ktoré tvrdenia o komunikácii procesora s V/V zariadením sú pravdivé.
  - ~~Obsluha pomocou prerušenia je rýchlejšia než priame riadenie~~
  - ~~Technicky najzložitejšia je komunikácia pomocou prerušenia~~
  - Pri priamom riadení procesor márni čas
  - DMA umožňuje prenos dát aj bez účasti procesora
  - Komunikácia pomocou prerušenia umožňuje efektívne využitie času procesora
  
  Adaptér, ktorý slúži na pripojenie V/V zariadenie ku zbernici, môže obsahovať viac častí. Uveďte aká je ich úloha.
  - Oddeľovač riadenia = čítanie stavu zariadenia
  - Vyrovnávacia pamäť zariadenia = zápis riadiacich slov
  - Vyrovnávacia pamät údajov = prenos údajov z/do V/V zariadenia
  
  Ktoré sú základné spôsoby komunikácie procesora s V/V zariadeniami?
  - ~~Priamy prístup do zariadenia~~
  - ~~Vektorové prerušovanie~~
  - Komunikácia s využitím prerušenia
  - Priamy prístup do pamäte
  - Priame riadenie procesorom
  
  Usporiadajte kroky vykonávané procesorom pri obsluhe prerušenia.
  - 1 Prijatie požiadavky na prerušenie
  - 2 Odloženie aktuálneho stavu procesora
  - 3 Zistenie zdroja prerušenia
  - 4 Vykonanie obslužného programu
  - 5 Obnovenie pôvodného stavu procesora
  - 6 Pokračovanie pôvodného programu
  
  Vyberte spôsoby rozpoznávania zdroja prerušenia.
  - ~~Obsluha poďla priority~~
  - ~~Postupná obsluha~~
  - Cyklická výzva
  - Pooling
  - Vektorové prerušovanie
  
  Rozhodnite, ktoré tvrdenia o komunikácii procesore s V/V zariadením sú pravdivé.
  - ~~Pomocou prerušení nie je možné obsluhovať viacero zariadení~~
  - ~~Počas DMA procesor nemôže robiť nič~~
  - ~~DMA prenos je pripravovaný s pomocou procesora~~
  - Prerušenia umožňujú efektívne využitie procesora.
  - Priame riadenie umožňuje najrýchlejšiu reakciu procesora
  
  Rozhodnite, ktoré výroky o prerušeniach sú pravdivé.
  - ~~Externé prerušenia sú synchrónne a maskovateľné~~
  - ~~Softvérové prerušenia majú vyššiu prioritu než výnimky~~
  - Po vzniku hardvérového prerušenia sú automaticky ďalšie hardvérové prerušenia zakázané
  - Vnútorné prerušenie sa vyvolá pri vykonaní neexistujúcej inštrukcie
  - Programové prerušenia sú synchrónne a nemaskovateľné
  </small>
  
  # Prerušenia
- Prijatie požiadavky na prerušenie
- Dokončenie rozrobenej inštrukcie
- Odloženie okamžitého stavu procesora
- Zistenie zdroja prerušenia
- Vykonanie zodpovedajúceho obslužného programu prerušenia
- Obnovenie pôvodného stavu procesora
- Pokračovanie v prerušenom programe

## Rozdelenie prerušení
- Vnútorné
- Programové (softvérové)
- Externé (hardvérové)

## Vnútorné prerušenia
- Výnimky (Exceptions)
- Vyvolané pri vzniku chyby: Delenie nulou, Nedefinovaná inštrukcia, Pretečenie zásobníka, Chyba parity
- Sú nemaskovateľné 

## Softvérové prerušenia
- Volanie špeciálnych podprogramov – funkcie BIOS-u, DOS-u, obrazovky ...
- Možnosť nahradenia vlastnými programami

## Externé prerušenia
- Vyvolané V/V zariadeniami (klávesnica, časovač, paralelný port, sériový port ...)
- Asynchrónne
- Väčšina je maskovateľná (dajú sa zakázať) 
- Nemaskovateľné – NMI, RESET

## Priorita prerušení
- RESET
- Vnútorné prerušenia (výnimky)
- Softvérové prerušenia
- Nemaskovateľné prerušenie
- Hardvérové prerušenia

## Rozpoznanie zdroja prerušenia
- Procesor 8086 – len jeden pin pre externé prerušenia (INT) + jeden pin pre NMI
- Spôsoby hľadania zdroja prerušenia: Polling, Cyklická výzva, Zreťazenie prerušení, Vektorové prerušovanie

<small>

  Priraďte vlastnosti príslušnému typu identifikácie pri vektorovom prerušovaní:
  - vyššia latencia = softvérová identifikácia
  - pevná priorita prerušení = hardvérová identifikácia
  - väčšia flexibilita = softvérová identifikácia
  - možnosť meniť prioritu = softvérová identifikácia
  - menšie oneskorenie = hardverová identifikácia
</small>

# Pamäť
- Ukladanie programov a údajov
- Ideálna pamäť: Rýchla, Veľká, Lacná

## Rozdelenie pamätí
- Podľa spôsobu prístupu k údajom:
	- RAM - pamäte s ľubovoľným prístupom 
	- SAM - pamäte so sekvenčným prístupom 
	- DASD - pamäte s priamym prístupom 
	- CAM - pamäte s asociatívnym prístupom
    
- Podľa smeru prístupu:
	- RWM - Read Write Memory 
	- xROM - Read Only Memory 
	- ROM
	- PROM
	- EPROM
	- EEPROM
	- FLASH

- Podľa spôsobu udržania informácie:
	- Statické (SRAM) ) – drahšie, rýchle (cache)
	- Dynamické (DRAM)– lacnejšie (hlavná pamäť)
    
Podľa energetickej závislosti:
	- Závislé
	- Nezávislé
	- Kombinované pamäte NVDIMM = DRAM + FLASH

## Alokácia pamäte
- Spôsoby alokácie blokov pamäte:
	- BEST FIT
	- WORST FIT
	- FIRST FIT
	- BUDDY FIT
	- CIRCULAR FIRST FIT (NEXT FIT)
- Vylučovanie blokov pamäte:
	- LRU (Least Recently Used)
	- LFU (Least Frequently Used)
	- FIFO
	- RANDOM
	- OP
    
    <small>
  Spárujte typ pamäte s popisom.
  - Cache = vyrovnávacia pamäta
  - Záložná pamät = archivácia údajov
  - Sekundárna pamät = pevný disk
  - Registre procesora = najrýchlejšia pamät
  - Hlavná pamät = operačná pamät
  
  Vytvorte pravdivé výroky o pamätiach.
  - Koherencia dát = zabezpečuje zhody dát v rôznych urovniach pamätí
  - Primárna pamät = je energeticky závislá
  - Sekundárna pamät = je energeticky nezávislá
  - Segmet = súvislá oblasť pamäti, ktorej obsah má určitý logický súvis
  - Virtuálna pamäť = prezentuje nespojité časti pamäte ako jeden spojitý celok
  
  Spárujte metódy vyraďovania bloku z pamäte so skratkou.
  - Odstráni najdávnejšie používaný blok = LRU
  - Odstráni blok, ktorý nebude potrebný najdlhší čas = OPT
  - Odstráni náhodne vybraný blok = RANDOM
  - Odstráni najstarší blok = FIFO
  - Odstráni najmenej často používaný blok = LFU
  
  Spárujte metódy alokovania pamäte so skratkou. 
  - Hľadá prvé vyhovujúce miesto = FIRST FIT
  - Hľadá prvé vyhovujúce miesto, ale nezačína hľadať vždy od začiatku = CIRCULAR FIRST FIT
  - Hľadá voľné miesto, ktoré je rovnaké alebo najbližšie väčšie = BEST FT
  - Hľadá najväčšie voľné miesto = WORST FIT
  - Povoľuje alokáciu blokov len určitej veľkosti = BUDDY FIT
  
  Doplňte hierarchický systém pamäte.

  <img width="382" height="127" alt="image" src="https://github.com/user-attachments/assets/7eb940b0-2c74-42e9-a443-7ca740e67534" />

  Rozhodnite, ktoré tvrdenia o pamätiach sú pravdivé.
  - ~~Sekundárna pamäť je energeticky závislá~~
  - ~~Každý cache pamäť je rozdelená na pamäť programu a pamäť údajov.~~
  - Operačná pamäť obsahuje aktuálne spustené programy
  - Pri použití stránkovania nie je nikdy potrebná defragmentácia pamäte
  - Dynamickú pamäť je potrebné neustále obnovovať
  
  Spárujte typ pamäte s popisom
  - SAM = pamäť so sekvenčným prístupom
  - ROM = pamäť určená len na čítanie
  - DASM = pamäť s priamym zápisom
  - CAM = pamäť s asociatávnym prístupom
  - RAM = pamäť s náhodným prístupom
  </small>
  
  # Pamätové čipy
  
  ## Tvorba pamäťových modulov
- zväčšenie šírky slova (počet slov sa nemení)- paralelné zapojenie
- zväčšenie počtu slov (šírka slova sa nemení)- sériové zapojenie

# Reprezentácia údajov
- Údaje rôzneho typu: Obraz, zvuk, video, Znaky, reťazce ,Čísla

## Dvojková sústava
- Pozičná sústava – význam symbolu závisí od jeho hodnoty a pozície
- 1234 = 1.103 + 2.102 + 3.101 + 4.100
- 110001012 = 1.27 + 1.26 + 1.22 + 1.20 = 19710
- Väčší základ – kratšie číslo
## Čísla v počítači
- Prirodzené (kladné a nula)
- Celé (kladné aj záporné)
- Reálne (desatinné)

## Prirodzené čísla
Prirodzený kód
- Rozsah:
	- N-bitové číslo: od 0 po 2 na n - 1
	- 8-bitové číslo: od 0 po 255
	- 16-bitové číslo: od 0 po 65535

## Inverzný kód
- Rozsah:
	- N-bitové číslo: −2 na (𝑁−1) +1,2 na (𝑁−1) −1
	- 8-bitové číslo: −127,127

## BCD kód
- Binary Coded Decimal
- pre desiatkové čísla
- 4 bity na číslo: 
- 0000 ... 0
- 0001 ... 1
- 0010 ... 2

<small>

  Vytvorte pamäť 1Kx16 z čipov 1Kx8.
   
  <img width="358" height="273" alt="image" src="https://github.com/user-attachments/assets/93825309-542a-4060-a636-0d42538282b6" />

  Vytvorte pamäť 4Kx4 z čipov 2Kx4

  <img width="364" height="253" alt="image" src="https://github.com/user-attachments/assets/ad34c544-535f-443e-8dbe-f25888224376" />

  Rozhodnite, ktoré tvrdenia o úložných zariadeniach sú pravdivé.
  - ~~Všetky stopy v pevnom disku majú rovný počet sektorov.~~
  - ~~V optikcých diskoch sú dáta ukladané do stôp s tvarom sústredených kružníc~~
  - Kolmý spôsob zápisu na pevný disk dosahuje vyššiu hustotu než pozdĺžny spôsob
  - V pevných diskoch sú dáta ukladané pomocou natáčania magnetických domén
  - Pri čítaní optického disku spôsobí odrazenie lasera od výstupku (pitu) zníženie intenzity svetla v snímači
  
  Vypočítajte pomocou BCD kódu: 56 + 29 (0101 0110 + 0010 1001)  = 1000 0101 s 1 korekciou (v jednotkach)
  
  Vypočítajte pomocou BCD kódu: 18 + 43 (01100001, 1 korekcia)
  
  Vypočítajte pomocou BCD kódu: 24 + 67 (10010001, 1 korekcia)
  
  Použitie počítačov podľa Flynnovej klasifikácie:
  - podpora práce s vektormi a maticami SIMD
  - jednoprocesorové počítaše SISD
  - pararelné systémy MIMD
  - systémy odolné voči chybám MISD
  - použitie v grafických procesoroch SIMD
  
  Uveďte, ako bude v 8-bitovom počítači kódované číslo -57..... (Priamy 10111001, Inverzny: 11000110, Doplnkovy 11000111, Predpaty: 00000111)
  
  Rozhodnite, ktoré tvrdenia o úložných zariadeniach sú pravdivé.
  - ~~V pevných diskoch sú dáta uložené v stope s tvarom špirály~~
  - ~~Výška výstupkov v optických diskoch je polovica vlnovej dĺžky svetla lasera~~
  - Kapacita média pri optickom zázname dát závisí od farby použitého lasera.
  - Sektor je najmenšia časť pevného disku, ku ktorej má operačný systém prístup
  - Zvýšenie hustoty zápisu na HDD je možné lokálnym zohriatím disku.
  
  Režim činnosti SISD počítača. Priraďte anglickému názvu príslušný popis.
  - Multiprogramming = paralelné vykonávanie niektorých operácií
  - Time sharing = zdanie súčasného vykonávania programov
  - Batch processing = vykonávanie jednotlivých častí programov za sebou
  
  Priraďte popisy k jednotlivým pojmom z oblasti úložných zariadení.
  - Má tvar kružnice = stopa
  - Miesto uloženia hlavičiek = parkovacia zona
  - Niekoľko stôp nad sebou = cylinder
  - Letí nad povrchom disku = hlavička
  - Najmenšia dostupná časť pevného disku = sektor
  
  Rozhodnite, ktoré tvrdenia o úložných zariadeniach sú pravdivé.
  - ~~V optických diskoch sú dáta ukladané v stopách s tvarom sústredených kružníc~~
  - ~~V pevných diskoch je vákuum~~
  - V pevných diskoch sa využíva magetnický záznam dát
  - Výška výstupkov v optických diskoch je štvtina vlnovej dĺzky svetla lasera
  - Na uloženie dát sa využívajú samoopravné kódy
  
  Označte všetky skratky súvisiace so zobrazovacími technológiami.
  - ~~TNT~~
  - ~~TN~~
  - ~~EPS~~
  - PPI
  - IPS
  - TFT
  - DPI
  - 

  Vytvorte pamäť 2Kx4 z čipov 1Kx4
  
  <img width="318" height="280" alt="image" src="https://github.com/user-attachments/assets/796499a3-3e0a-4d3c-8c8a-8217757fb416" />

  Vytvorte pamäť 1Kx8 z čipov 1Kx4

  <img width="377" height="255" alt="image" src="https://github.com/user-attachments/assets/3163b4e0-748a-4e54-a691-46021897f6b3" />

  Na obrázku je princíp riadeného tokom dát. Priraďte popis častiam počítača.

  <img width="558" height="252" alt="image" src="https://github.com/user-attachments/assets/643970dd-fd67-44c1-8c80-a9d0e0dee3d9" />



  
  </small>
