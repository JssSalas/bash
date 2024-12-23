#!/bin/bash

NombreArchivo=$1

if [[ -f $NombreArchivo ]]; then
	echo "Se eliminará el archivo: $NombreArchivo"
	rm $NombreArchivo
	echo "se eliminó el archivo"
	ls -lrth
else
echo "No es un archivo"
	if [[ -d $NombreArchivo ]]; then
	echo "$NombreArchivo es una carpeta"
	echo "¿Deseas borrarla? (Y/N)"
	read respuesta
		if [[ $respuesta == "Y" ]];then
		echo "Se eliminará la carpeta: $NombreArchivo"
		rm -rf $NombreArchivo
		echo "se eliminó la carpeta"
		ls -lrth
		fi
	else
	echo "Tampoco una carpeta"
	fi
fi
 
