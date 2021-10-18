Code	Segment
	assume CS:Code, DS:Data, SS:Stack

Start:
	mov	ax, Code
	mov	DS, AX

    mov	dx, offset Uzenet1
	mov ah, 09
	int 21h 
	
    mov	dx, offset Uzenet2
	mov ah, 09
	int 21h



Program_Vege:
	mov	ax, 4c00h
	int	21h

Uzenet1 db "Szia $"
Uzenet2 db "Ha ezt latod elore vagy.$"



Code	Ends

Data	Segment

Data	Ends

Stack	Segment

Stack	Ends
	End	Start




