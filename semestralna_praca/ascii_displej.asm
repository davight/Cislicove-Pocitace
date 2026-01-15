; Konstanty vsetkych pismen
Znaky:
	; A (0)
	byte 0x0E
	byte 0x11
	byte 0x1F
	byte 0x11
	byte 0x11

	; B (5)
	byte 0x1E
	byte 0x11
	byte 0x1E
	byte 0x11
	byte 0x1E

	; C (10)
	byte 0x0F
	byte 0x10
	byte 0x10
	byte 0x10
	byte 0x0F

	; D (15)
	byte 0x1E
	byte 0x11
	byte 0x11
	byte 0x11
	byte 0x1E

	; E (20)
	byte 0x1F
	byte 0x10
	byte 0x1E
	byte 0x10
	byte 0x1F

	; F (25)
	byte 0x1F
	byte 0x10
	byte 0x1E
	byte 0x10
	byte 0x10

	; G (30)
	byte 0x0F
	byte 0x10
	byte 0x17
	byte 0x11
	byte 0x0F

	; H (35)
	byte 0x11
	byte 0x11
	byte 0x1F
	byte 0x11
	byte 0x11

	; I (40)
	byte 0x0E
	byte 0x04
	byte 0x04
	byte 0x04
	byte 0x0E

	; J (45)
	byte 0x07
	byte 0x01
	byte 0x01
	byte 0x11
	byte 0x0E

	; K (50)
	byte 0x11
	byte 0x12
	byte 0x1C
	byte 0x12
	byte 0x11

	; L (55)
	byte 0x10
	byte 0x10
	byte 0x10
	byte 0x10
	byte 0x1F

	; M (60)
	byte 0x11
	byte 0x1B
	byte 0x15
	byte 0x11
	byte 0x11

	; N (65)
	byte 0x11
	byte 0x19
	byte 0x15
	byte 0x13
	byte 0x11

	; O (70)
	byte 0x0E
	byte 0x11
	byte 0x11
	byte 0x11
	byte 0x0E

	; P (75)
	byte 0x1E
	byte 0x11
	byte 0x1E
	byte 0x10
	byte 0x10

	; Q (80)
	byte 0x0E
	byte 0x11
	byte 0x11
	byte 0x11
	byte 0x0E

	; R (85)
	byte 0x1E
	byte 0x11
	byte 0x1E
	byte 0x12
	byte 0x11

	; S (90)
	byte 0x0F
	byte 0x10
	byte 0x0E
	byte 0x01
	byte 0x1E

	; T (95)
	byte 0x1F
	byte 0x04
	byte 0x04
	byte 0x04
	byte 0x04

	; U (100)
	byte 0x11
	byte 0x11
	byte 0x11
	byte 0x11
	byte 0x0E

	; V (105)
	byte 0x11
	byte 0x11
	byte 0x11
	byte 0x0A
	byte 0x04

	; W (110)
	byte 0x11
	byte 0x11
	byte 0x15
	byte 0x1B
	byte 0x11

	; X (115)
	byte 0x11
	byte 0x0A
	byte 0x04
	byte 0x0A
	byte 0x11

	; Y (120)
	byte 0x11
	byte 0x0A
	byte 0x04
	byte 0x04
	byte 0x04

	; Z (125)
	byte 0x1F
	byte 0x02
	byte 0x04
	byte 0x08
	byte 0x1F

ResetSRAM:
	mvi B,9
	smi 1,B ; Na adrese 1 bude index posledne ulozeneho cisla

PreStart:
	cal Display_EMPTY
	
Start:
	mvi B,255
	mvi C,255
	mvi D,255

WaitForInput:
	pus A
	pus B
	
	inn A,0111b ; Riadok 1 - C=7,D=11,E=13,F=14

	CMI A,7
	je PressC

	CMI A,11
	je PressD

	CMI A,13
	je PressE
	
	CMI A,14
	je PressF

	inn A,1011b ; Riadok 2 - 8=7,9=11

	cmi A,7 ; 8
	je LoadD_8
	
	cmi A,11 ; 9
	je LoadD_9

	inn A,1101b ; Riadok 3 - 4=7,5=11,6=13,7=14

	cmi A,7 ; 4
	je LoadD_4

	cmi A,11 ; 5
	je LoadD_5

	cmi A,13 ; 6
	je LoadD_6
	
	cmi A,14 ; 7
	je LoadD_7

	inn A,1110b ; Riadok 4 - 0=7,1=11,2=13,3=14

	cmi A,7 ; 0
	je LoadD_0
	
	cmi A,11 ; 1
	je LoadD_1
	
	cmi A,13 ; 2
	je LoadD_2
	
	cmi A,14 ; 3
	je LoadD_3

	pop B
	pop A
	
	jmp WaitForInput

;
; Ulozi cislo z registra D, do najblizsieho volneho registra podla podmienok:
; + Pokial register B = 255 ulozi do C.
; + Pokial register C = 255 ulozi do B.
; + Pokial register B = 255 && C = 255 ulozi do B
; + Inak ulozi do C
;
PressC:
	mvi A,0
	cmi D,255
	je WaitForInput

	cmi B,255 ; ak je B 255 uloz do B inak uloz do C
	je PressC_saveToB

	jmp PressC_saveToC

PressC_saveToC:
	mov C,D
	mvi D,255
	jmp WaitForInput

PressC_saveToB:
	mov B,D
	mvi D,255
	jmp WaitForInput

;
; Ulozi cisla z registrov B, C do pamate.
; + ak B != 255 && C != 255, tak ulozi B = (B * 10) + (C * 1)
; + inak caka na vstup
;
PressD:
	pus A
	pus D

	cmi B,255
	je WaitForInput

	cmi C,255
	je WaitForInput

	; 10 * B + 1 * C
	mov A,B
	add B,A
	add B,A
	add B,A
	add B,A
	add B,A
	add B,A
	add B,A
	add B,A
	add B,A
	add B,C
	
	cmi B,65 ; Check ci zadal platne ASCII cislo (spodna hranica)
	jl PressD_invalidNumber
	
	cmi B,90 ; Check ci zadal platne ASCII cislo (horna hranica)
	jg PressD_invalidNumber

	smr B
	
	inx M

	pop D
	pop A
	jmp Start

PressD_invalidNumber:
	pop D
	pop A
	jmp Start

;
; Ulozi do pamate medzeru, kedze slovo je dokoncene
;
PressE:
	dcx M ; Zmensime MP, pozrieme ci je posledna medzera

	lmr C
	
	inx M ; Vratime MP na povodne miesto

	cmi C,32
	je WaitForInput
	
	mvi C,32
	smr C

	inx M

	jmp WaitForInput
	
;
; Zacne vypisovat pismena na displej.
;
PressF:
	mvi A,0
	pus C
	pus D
	
	mvx C,M
	mov B,D ; B = Pocet pismen
	pop D
	pop C

	mxi M,0
	jmp PressF_loopAndPrint

; Opakuje dokym B nebude 0.
PressF_loopAndPrint:
	pus C
	pus D
	cmi B,0
	je PressF

	dec B
	
	lmr D ; Nacita do D
	;scall DSP ; pre debug

	cmi D,32 ; Ak je to medzera vypise sa prazdne
	ce Display_EMPTY

	cmi D,32
	cne Display_ASCII

	pop D
	pop C

	cal Wait

	inx M
	jmp PressF_loopAndPrint

;
; Nacita cislo do registra D. 
;
LoadD_0:
	mvi D,0
	jmp WaitForInput

LoadD_1:
	mvi D,1
	jmp WaitForInput

LoadD_2:
	mvi D,2
	jmp WaitForInput

LoadD_3:
	mvi D,3
	jmp WaitForInput

LoadD_4:
	mvi D,4
	jmp WaitForInput

LoadD_5:
	mvi D,5
	jmp WaitForInput

LoadD_6:
	mvi D,6
	jmp WaitForInput

LoadD_7:
	mvi D,7
	jmp WaitForInput

LoadD_8:
	mvi D,8
	jmp WaitForInput

LoadD_9:
	mvi D,9
	jmp WaitForInput

;
; Vykresli znak na displejoch.
; Ocakava ASCII hodnotu v registry D
;
Display_ASCII:
	pus A

	; A zacina na 65
	sbi D,'A' ; odcitame 65 aby sme indexovali od 0
	; Vynasobime 5 (*2*2 +itself)
	mov A,D
	shl D,2
	add D,A

	MMR A,D
	out 11110b, A
	
	inc D
	MMR A,D
	out 11101b, A
	
	inc D
	MMR A,D
	out 11011b, A
	
	inc D
	MMR A,D
	out 10111b, A
	
	inc D
	MMR A,D
	out 01111b, A

	pop A
	ret

;
; Zobrazi prazdnotu na displejoch
;
Display_EMPTY:
	pus B

	mvi B, 0b ; reset

	out 11110b, B ; Prvy
	out 11101b, B ; Druhy
	out 11011b, B ; Treti
	out 10111b, B ; Stvrty
	out 01111b, B ; Piaty

	pop B
	ret

;
; Pocka (wastne) 100 * 255 * 255 cyklov
;
Wait:
	pus B
	pus C
	pus D
	
	mvi D, 100
	WaitInternal1:
		mvi C, 255
		WaitInternal2:
			mvi B,255
			WaitInternal3:
				dec B
				jnz WaitInternal3
			dec C
			jnz WaitInternal2
		dec D
		jnz WaitInternal1
	
	pop D
	pop C
	pop B
	ret
	