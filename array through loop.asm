.model small
.stack 100h
.data
arr1 db 49,50,51,52
.code
main proc
    mov ax,@data
    mov ds,ax
    mov si,offset arr1 
    mov cx,4
    
    loop1:
    
    mov dx,[si]
    mov ah,2
    int 21h    
    
   inc [si]
   loop loop1
    
    mov ah,4ch
    int 21h
    main endp
end main




