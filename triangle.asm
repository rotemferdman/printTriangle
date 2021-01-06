
org 100h

mov ax, 13h
int 10h
mov cx, 250


a: ;printing

mov bh, 0h ;color we want to print
 ;coordinates
mov dx, cx
sub dx, 60
mov al, 4    ;color
mov ah, 0Ch  ;print interrupt
int 10h 
 
cmp cx, 0xA0 ;reach the max height
je b
loop a

b:
inc dx
mov al, 4    ;color
mov ah, 0Ch  ;print interrupt
int 10h 
cmp cx, 0x45
je c
loop b

c:
add cx, 2
mov dx, 0xC0 
mov al, 4    ;color
mov ah, 0Ch  ;print interrupt
int 10h 
cmp cx, 0xFD
je d:
loop c

d:


ret
