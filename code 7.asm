.model small
.stack 100h
.data
.code
main proc
    
    mov cx,4
    
    l1:
    push cx
    
    mov cx,5
    
    l2:
    mov dl,'a'
    mov ah,02
    int 21h
    
    loop l2:
    mov dl,13
    mov ah,02
    int 21h 
    
    mov dl,10
    mov ah,02
    int 21h
    pop cx
    
    loop l1:
        
    
    mov ah,4ch
    int 21h
    
    main endp 
end main