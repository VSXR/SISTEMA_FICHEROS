#!/bin/bash

:'
generateFileFunction -> generara los directorios donde se almacenaran los archivos log y csv
'

generateFileFunction(){
    usuario=$(whoami)
    carpeta_programa="$HOME/Descargas/SISTEMA_FICHEROS"

    mkdir -p "$carpeta_programa/logs"
    mkdir -p "$carpeta_programa/data"

    programa="$carpeta_programa/src/main"
    log_file="$carpeta_programa/logs/log_File.log"
    csv_file="$carpeta_programa/data/consolidado.csv"

    if [ ! -f "$programa" ]; then
        gcc "$carpeta_programa/src/main.c" -o "$programa"
    fi

    "$programa" > "$log_file" 2>&1

    if [ $? -eq 0 ]; then
        echo "El programa se ejecutó correctamente"
    else
        echo "Se produjo un error al ejecutar el programa"
    fi

    touch "$csv_file"

    echo "Se ha creado el archivo de registro $log_file"
    echo "Se ha creado el archivo CSV $csv_file"
}