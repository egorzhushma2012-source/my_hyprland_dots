#!/bin/zsh
DIR="$HOME/Pictures/Wallpapers"
while true; do
    imgs=($DIR/*.(jpg|png|jpeg)(N))
    (( ${#imgs[@]} > 0 )) && awww img --transition-type random "${imgs[$((RANDOM % ${#imgs[@]}))]}"
    sleep 60 
done   
