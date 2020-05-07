#!/bin/bash 

VGA_Q=$(xrandr --query | grep 'VGA-1' | sed "s/\s/;/g" | cut -d ';' -f 2)

echo $VGA_Q
