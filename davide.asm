Code	Segment
	assume CS:Code, DS:Data, SS:Stack

Start:
	mov	ax, Code
	mov	DS, AX


	mov	ax, 3
	int	10h

Kurzor:
	mov	ah, 2
	mov	bh, 0
	mov	dh, 10
	mov	dl, 5
	int	10h

	mov	dx, offset Uzenet1
	mov	ah, 9
	int	21h

	mov	dx, offset Szamlalo
	mov	ah, 9
	int	21h

	mov	dx, offset Uzenet2
	mov	ah, 9
	int	21h

Bevitel:

	xor	ax, ax ; = mov  ax, 0
	int	16h

	cmp	al, 27
	jz	Program_Vege

	cmp	al, "a"
	jz	Szamol

	jmp	Bevitel

Szamol:
	mov	di, offset Szamlalo
	mov	al, [di]
	inc	al ; = add al, 1
	mov	[di], al

	jmp	Kurzor


Program_Vege:
	mov	ax, 4c00h
	int	21h

Uzenet1 db	"Az a billentyu $"
Uzenet2 db	" alkalommal volt leutve.$"
Szamlalo db	"0$"


Code	Ends

Data	Segment

Data	Ends

Stack	Segment

Stack	Ends
	End	Start
