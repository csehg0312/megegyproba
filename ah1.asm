Code	Segment
	assume CS:Code, DS:Data, SS:Stack

Start:
	mov ax,Code
	mov DS,AX

	mov ah,02
	mov dl,50h
	int 21h
	
	mov ah,02
	mov dl,55h
	int 21h

	mov ah,02
	mov dl,53h
	int 21h

	mov ah,02
	mov dl,53h
	int 21h

	mov ah,02
	mov dl,59h
	int 21h


Program_Vege:
	mov ax,4c00h
	int 21h

Code	Ends

Data	Segment

Data	Ends

Stack	Segment

Stack 	Ends
	End Start




