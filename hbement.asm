Code	Segment
	assume CS:Code, DS:Data, SS:Stack

Start:
	mov	ax, Code
	mov	DS, AX

	mov dx, offset Uzenet1
	mov ah, 9
	int 21h

	xor ax, ax
	mov ah,0
	int 16h

	mov bl,al
	sub bl,48

	mov ah,2
	mov dl,al
	int 21h

	mov dx, offset Uzenet2
	mov ah, 9
	int 21h

	xor ax, ax
	mov ah,0
	int 16h

	mov bh,al
	sub bh,48

	mov ah,2
	mov dl,al
	int 21h

	mov dx, offset Uzenet3
	mov ah, 9
	int 21h

	xor ax, ax
	mov ah,0
	int 16h

	mov cl,al
	sub cl,48

	mov ah,2
	mov dl,al
	int 21h

bl_az_alap:
	cmp bl, bh
	jnc bl_nagyobb

	cmp bh, cl
	jnc bh_az_alap
	jmp cl_az_alap

bl_nagyobb:
	cmp bl,cl
	jnc bh_az_alap
	jmp cl_az_alap

cl_az_alap:
	mov al,bl
	add al,bh ;a+b
	cmp cl,al
	jc igen ; (a+b) =< c
	jmp nem	

bh_az_alap:
	mov al,bl
	add al,cl ;a+c
	cmp bh,al
	jc igen ;(a+c)=<b
	jmp nem

nem:
	mov ah, 2
	mov bh, 0
	mov ah, 13 ;sor koordinate
	mov dl, 5 ;oszlop koordin'ta
	int 10h

	mov dx, offset Valasz_Nem
	mov ah, 9
	int 21h

	jmp Program_Vege

igen:
	mov ah, 2
	mov bh, 0
	mov ah, 13 ;sor koordinate
	mov dl, 5 ;oszlop koordin'ta
	int 10h

	mov dx, offset Valasz_Igen
	mov ah, 9
	int 21h



Program_Vege:
	mov	ax, 4c00h
	int	21h

Uzenet1 db "A. oldal $"
Uzenet2 db "B. oldal $"
Uzenet3 db "C. oldal $"
Valasz_Igen db "A haromszog lerajzolhato $"
Valasz_Nem db "A haromszog nem rajzolhato le $"


Code	Ends

Data	Segment

Data	Ends

Stack	Segment

Stack	Ends
	End	Start





    