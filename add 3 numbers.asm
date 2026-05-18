
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

.model small
.stack 100h
.code
main proc
   mov ah,1
   int 21h
   mov bl,al
   
   mov ah,1
   int 21h
   mov bh,al
   
   mov ah,1
   int 21h
   mov cl,al 
   
   add bl,bh
   sub bl,48
   mov ch,bl
   add ch,cl
   sub ch,48
   mov ah,2
   mov dl,ch
   int 21h
   
   exit:
   mov ah,4ch
   int 21h
   main endp
end main
    






