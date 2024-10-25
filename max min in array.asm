.model small
.stack 100h
.data
    arr DB 49, 50, 51, 52  
    min_val DB ?            
    max_val DB ?            
.code
main proc
    mov ax, @data           
    mov ds, ax

    mov si, offset arr      
    mov al, [si]            
    mov min_val, al         
    mov max_val, al         

    mov cx, 3               

find_min_max:
     inc si                 
    mov al, [si]         

    cmp al, min_val         
    jge check_max           
    mov min_val, al         

check_max:
    cmp al, max_val         
    jle next_element        
    mov max_val, al         

next_element:
    loop find_min_max       

    ; Display minimum value
    mov dl, min_val         
    mov ah, 02h             
    int 21h

    ; Display maximum value
    mov dl, max_val         
    mov ah, 02h             
    int 21h

    mov ah, 4Ch           
    int 21h

main endp

end main




