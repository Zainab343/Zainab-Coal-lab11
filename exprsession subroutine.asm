.model small
.stack 100h 
.data
msg db 'Enter three numbers (x,y,z) $'
.code                          
main proc
    mov ax,@data
    mov ds,ax
    mov dx,offset msg
    mov ah,09
    int 21h
    
    call display
             
    mov ah,4ch
    int 21h
             
   main endp

input proc
   
    mov ah,01
    int 21h 
    sub al,48
    mov bl,al
    
    
    ret
    input endp 
display proc
    call input
    mov cl,bl  
    
    mov dl,43
      mov ah,02
      int 21h                                     
      
    call input
    mov al,bl
                
     add al,cl
     sub al,48
     
       mov dl,45
      mov ah,02
      int 21h  
      
     call input
    mov cl,bl 
    
    sub al,cl
    add al,48
    
    mov dl,45
      mov ah,02
      int 21h 
      
      mov dl,'1'
      mov ah,02
      int 21h
      
      sub al,49
     add al,48
      
        
      mov dl,61
      mov ah,02
      int 21h
      
      mov dl,al
       mov ah,02
      int 21h
        
    
    display endp
   