#!/bin/bash
echo "Programa de operaciones de dos valores"
echo "Introduce un número"
read num1
echo "Introduce otro número"
read num2
suma=$((num2+num1))
resta=$((num2-num1))
multiplicacion=$((num2*num1))
division=$((num2/num1))
modulo=$((num2%num1))
potencia=$((num2**num1))
echo "La suma de $num2 y $num1 es: $suma /n La resta de $num2 y $num1 es: $resta /n La multiplicación de $num2 y $num1 es: $multiplicacion /n La división de $num2 y $num1 es: $division /n El módulo de $num2 y $num1 es: $modulo /n La potencia de $num2 y $num1 es: $potencia"
echo "Hasta luego, vuelve pronto"