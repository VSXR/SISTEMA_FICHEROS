#!/bin/bash

mkdir -p logs
mkdir -p data

programa="./src/main"

log_file="./logs/registro.log"
csv_file="./data/consolidado.csv"

# Compilar el programa C si aún no está compilado
if [ ! -f "$programa" ]; then
    echo "Compilando el programa C..."
    gcc main.c -o main
fi

# Ejecutar el programa C y redirigir la salida a un archivo de registro
$programa > $log_file 2>&1

if [ $? -eq 0 ]; then
    echo "El programa se ejecutó correctamente."
else
    echo "Se produjo un error al ejecutar el programa."
fi

touch $csv_file

echo "Se ha creado el archivo de registro $log_file"
echo "Se ha creado el archivo CSV $csv_file"
