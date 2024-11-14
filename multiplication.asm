.model small
.stack 100h
.data
msg db 'Enter first number  $'
msg1 db 'Enter second number  $'
msg2 db 'Multiplication:  $ '
msg3 db 'Enter third number: $'
.code                          
main proc
    mov ax,@data
    mov ds,ax
    mov dx,offset msg
    mov ah,09
    int 21h
    call input
    mov cx,bx 
    ;call space
    
    mov dx,offset msg1
    mov ah,09
    int 21h 
    call input
    mov ax,bx 
    call space
              
    mov dx,offset msg2
    mov ah,09
    int 21h
    call multiply
    mov bx,dx
    call space 
                
    mov dx,offset msg3
    mov ah,09
    int 21h
    call input 
    mov cx,bx
               
    mov dx,offset msg2
    mov ah,09
    int 21h
    call multiply
    
    mov ah,4ch
    int 21h
    
    main endp
    
   input proc
   
    mov ah,01
    int 21h 
    sub ax,48
    mov bx,ax
    
    
    ret
    input endp 
   
   space proc
    
    mov dl,13
    mov ah,02
    int 21h
    
    mov dl,10
    mov ah,02
    int 21h   
    
    ret
    space endp
 

multiply proc
    
    mov ax,cx
    mul bx 
    
    AAM
    add ah,48 
    add al,48 
    mov ch,ah
    mov cl,al
    
    mov dl,ch
    mov ah,02
    int 21h
    
    
    mov dl,cl
    mov ah,02
    int 21h 
    ret
  
  multiply endp

end main
     
    
    
    