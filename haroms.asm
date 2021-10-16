Code    Segment
        assume CS:Code, DS:Data, SS:Stack

Start:
    mov ax, Code
    mov ds, ax
    ;itt kezdodik a kod

    ;itt probaltam bemenetet szerezni
    mov ah, 1
    int 21h

    mov dl, ah

    ;itt kellene kiirni
    int 21h






Program_Vege:
    mov ax, 4c00h
    int 21h



Code    Ends

Data    Segment

Data    Ends

Stack   Segment

Stack   Ends
    Ends    Start






