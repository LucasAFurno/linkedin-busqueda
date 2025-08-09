#!/bin/bash
clear

echo -n "Ingrese el nombre de la persona que está buscando: "
read nombre
if [ -z "$nombre" ]; then
    echo "No ingresaste ningún nombre"
    exit 1
fi

echo -n "Ingrese el apellido de la persona que está buscando: "
read apellido
if [ -z "$apellido" ]; then
    echo "No ingresaste ningún apellido"
    exit 1
fi

echo
echo "Comenzando la búsqueda de $nombre $apellido"
read -p "Presione ENTER para continuar"

# Codificar espacios para URL
nombre_apellido=$(echo "$nombre $apellido" | sed 's/ /%20/g')

firefox "https://www.linkedin.com/search/results/all/?keywords=${nombre_apellido}"
