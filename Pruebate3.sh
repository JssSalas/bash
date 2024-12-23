#!/bin/bash

echo "Argumentos edad y nombre"
nombre=$1
anioNac=$2
anioAct=2024

edad=$((anioAct-anioNac))
echo "Hola $nombre, tu edad a $anioAct es de: $edad"  

echo "ls -ltrh"
ls -ltrh

echo "crea carpeta respaldo y copia el contenido de shell"
mkdir Respaldo
cp -rf /Users/js/Scripts/* /Users/js/Scripts/Respaldo
cd Respaldo
ls -ltrh
cd ..

echo "Toma 3 números, tres números enteros, posteriormente, calcular e imprimir el 
resultado de sumarlos, multiplicarlos y el resultado de la división del tercero entre el 
primero."

echo "inserta num 1"
read num1
echo "inserta num 2"
read num2
echo "inserta num3"
read num3

suma=$((num1+num2+num3))
multi=$((num1*num2*num3))
div=$((num3/num1))

echo "los resultados son suma = $suma, multiplicación =  $multi, división = $div"
