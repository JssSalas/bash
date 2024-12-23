#!/bin/bash

#Programa que verifica si una palabra existe en el archivo /etc/passwd

read -p "Ingrese la palabra a verificar: " palabra
read -p "Ingrese el nombre del archivo a verificar: " archivo

if grep -i "$palabra" /Users/js/Scripts/$archivo
then
    echo "El usuario $palabra si existe en el $archivo"
else
    echo "El usuario $palabra no existe en el $archivo"
fi