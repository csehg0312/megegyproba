Code	Segment
	assume CS: Code, DS: Data, SS:Stack

Start:      
    mov ah,1
    int 21h
    int 21h 
    
    mov ah,2 
    mov dl, 0ah
    int 21h
    mov dl, 0dh
    int 21h
    mov dl,'?'
    int 21h  
    
    
    
    
Program_Vege:
    mov ax,4c00h
    int 21h



Code	Ends

Data	Segment

Data	Ends

Stack	Segment

Stack	Ends
	End Start 
	
	
	
	
	
	




