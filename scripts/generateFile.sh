#!/bin/bash

# Función para generar los directorios y archivos del programa
generateFileFunction(){
    usuario=$(whoami)
    rutaCarpeta_UfvAudita="$HOME/Descargas/SISTEMA_FICHEROS"

    mkdir -p "$rutaCarpeta_UfvAudita/logs"
    mkdir -p "$rutaCarpeta_UfvAudita/data/sucursales"

    programa="$rutaCarpeta_UfvAudita/src/main"
    log_file="$rutaCarpeta_UfvAudita/logs/log_File.log"
    csv_file="$rutaCarpeta_UfvAudita/data/consolidado.csv"

    if [ ! -f "$programa" ]; then
        gcc "$rutaCarpeta_UfvAudita/src/main.c" -o "$programa"
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

generateFileFunction
