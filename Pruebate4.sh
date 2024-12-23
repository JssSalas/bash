#!/bin/bash

# Script en bash que al ejecutarse verifique si existe la carpeta con un nombre en particular, 
# en caso de que sí exista, copie todos los archivos del directorio superior a esta carpeta. 
# En caso de que no exista, cree la carpeta con ese nombre y copie en ella todos los archivos 
# del directorio superior.
echo "Programa que verifica si existe una carpeta con un nombre en particular"
read -p "Ingrese el nombre de la carpeta a verificar: " carpeta
if [ -d $carpeta ]
then
    cp * $carpeta
    echo "La carpeta $carpeta existe y se copiaron los archivos del directorio superior a ella"
else
    mkdir $carpeta
    cp * $carpeta
    echo "La carpeta $carpeta no existía, se creó y se copiaron los archivos del directorio superior a ella"
fi

# Script en bash que al ejecutarse verifique si un archivo existe, si sí existe que verifique 
# si tiene permisos de lectura, si los tiene que verifique si tiene permisos de escritura 
# y si sí lo tiene, que finalmente verifique si tiene permisos de ejecución.
echo "Programa que verifica los permisos de un archivo"
read -p "Ingrese el nombre del archivo a verificar: " archivo   
if [ -e $archivo ]
then
    echo "El archivo $archivo existe"
    if [ -r $archivo ]
    then
        echo "El archivo $archivo tiene permisos de lectura"
        if [ -w $archivo ]
        then
            echo "El archivo $archivo tiene permisos de escritura"
            if [ -x $archivo ]
            then
                echo "El archivo $archivo tiene permisos de ejecución"
            else
                echo "El archivo $archivo no tiene permisos de ejecución"
            fi
        else
            echo "El archivo $archivo no tiene permisos de escritura"
        fi
    else
        echo "El archivo $archivo no tiene permisos de lectura"
    fi
else
    echo "El archivo $archivo no existe"
fi

# Script en bash que al ejecutarse determine si el valor numérico que se le pasó por parámetro es múltiplo de 3.
echo "Programa que verifica si un número es múltiplo de 3"
read -p "Ingrese un número: " numero
if [ $((numero % 3)) -eq 0 ]
then
    echo "El número $numero es múltiplo de 3"
else
    echo "El número $numero no es múltiplo de 3"
fi