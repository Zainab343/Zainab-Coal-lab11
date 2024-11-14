.model small
.stack 100h
.data
msg db 'Enter first number  $'
msg1 db 'Enter second number  $'
msg2 db 'addition:  $ '
msg3 db 'subtration: $'
msg4 db 'Multiplication $'
msg5 db 'division $'
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
    call addition
    call space
    
     mov dx,offset msg3
    mov ah,09
    int 21h
    call subtract
    call space
              
    mov dx,offset msg4
    mov ah,09
    int 21h
    call multiply
    call space 
                
    mov dx,offset msg5
    mov ah,09
    int 21h
    call divide
    
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

addition proc 
  
    mov ax,cx
    add ax,bx
    add al,48
    mov dl,al
    
    mov ah,02
    int 21h
    
    ret
    addition endp

subtract proc
   
    
    mov ax,cx
    sub ax,bx
    add al,48
    mov dl,al
    
    mov ah,02
    int 21h 
    ret
    subtract endp 

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

divide proc
    mov ax,cx
    mov dx,0
    div bx
            
    add al,48
    mov dl,al
    mov ah,02
    int 21h 
    
    add ah,48          ; Convert remainder (in AH) to ASCII
    mov dl,ah          ; Copy remainder to dl for printing
    mov ah,02          ; DOS interrupt to display the result
    int 21h       
            
   ret 
  divide endp

end main
     
    
    
    