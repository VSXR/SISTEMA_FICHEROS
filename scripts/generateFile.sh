#!/bin/bash

# Función para generar los directorios y archivos del programa
generateFileFunction(){
    usuario=$(whoami)
    rutaCarpeta_UfvAudita="$HOME/Descargas/SISTEMA_FICHEROS"

    # Verificar si los directorios ya existen
    if [ -d "$rutaCarpeta_UfvAudita/logs" ]; then
        echo "El directorio 'logs' ya existe."
    else
        mkdir -p "$rutaCarpeta_UfvAudita/logs"
        echo "Se ha creado el directorio 'logs'. Este contiene el archivo de registro 'Log_file.log'"
    fi

    if [ -d "$rutaCarpeta_UfvAudita/data/sucursales" ]; then
        echo "El subdirectorio 'sucursales' ya existe."
    else
        mkdir -p "$rutaCarpeta_UfvAudita/data/sucursales"
        echo "Se ha creado el subdirectorio 'sucursales'."
    fi

    # Crear el archivo CSV si no existe
    csv_file="$rutaCarpeta_UfvAudita/data/consolidado.csv"
    if [ -f "$csv_file" ]; then
        echo "El archivo CSV 'consolidado.csv' ya existe."
    else
        touch "$csv_file"
        echo "Se ha creado el archivo CSV 'consolidado.csv'."
    fi

    programa="$rutaCarpeta_UfvAudita/src/main"
    log_file="$rutaCarpeta_UfvAudita/logs/log_File.log"

    # Verificar si el programa ya está compilado
    if [ -x "$programa" ]; then
        echo "El programa ya está compilado."
    else
        echo "El programa no está compilado. Compilándolo ahora..."
        gcc "$rutaCarpeta_UfvAudita/src/main.c" -o "$programa"
        if [ $? -ne 0 ]; then
            echo "Error al compilar el programa."
            exit 1
        fi
    fi

    # Ejecutar el programa
    "$programa" > "$log_file" 2>&1

    if [ $? -eq 0 ]; then
        echo "El programa se ejecutó correctamente"
    else
        echo "Se produjo un error al ejecutar el programa"
    fi
}

generateFileFunction
