.model small
.stack 100h
.data
msg db 'Name: Zainab  $'
msg1 db 'age: 18 $'
msg2 db 'studying in: Riphah International University  $'
msg3 db 'hobbies: $'
msg4 db '1.playing badminton $'
msg5 db '2.listening to MUsic $'
.code 
main proc
    mov ax,@data
    mov ds,ax
    mov ax,offset msg
    call displayy 
    mov dx,offset msg1
    call displayy
    mov dx,offset msg2
    call displayy
    mov dx,offset msg3
    call displayy  
    mov dx,offset msg4
    call displayy
    mov dx,offset msg5    
    call displayy
    mov ah,4ch
    int 21h
  main endp

displayy proc
    
    mov ah,09
    int 21h
    mov dl,10
    mov ah,02
    int 21h
    
    mov dl,13
    mov ah,02
    int 21h
    
    ret
    displayy endp
    end main
    