#!/bin/bash

home_directory="$HOME"
echo "Directorio de inicio del usuario: $home_directory"

carpeta_especifica="UFV-AUDITA"
directorio_especifico_en_ingles="$home_directory/Downloads/$carpeta_especifica"

# Si no se encuentra en "Downloads", buscar en "Descargas"
if [ ! -d "$directorio_especifico_en_ingles" ]; then
    directorio_especifico_en_espanol="$home_directory/Descargas/$carpeta_especifica"
    if [ ! -d "$directorio_especifico_en_espanol" ]; then
        echo "No se encontró el directorio especificado ni en 'Downloads' ni en 'Descargas'. Saliendo..."
        exit 1
    else
        directorio_especifico="$directorio_especifico_en_espanol"
    fi
else
    directorio_especifico="$directorio_especifico_en_ingles"
fi

# Navegar al directorio especificado
cd "$directorio_especifico" || { echo "No se pudo cambiar al directorio especificado. Saliendo..."; exit 1; }

# Verificar que estamos en el directorio correcto
if [ "$(pwd)" == "$directorio_especifico" ]; then
    echo "Ahora estás en el directorio especificado."
    # Aquí puedes realizar las operaciones que necesites en este directorio
    # Por ejemplo, crear archivos
    touch archivo1.txt
    touch archivo2.txt
    echo "Archivos creados en $(pwd)"
else
    echo "No se pudo cambiar al directorio especificado. Saliendo..."
    exit 1
fi

# Volver al directorio original
cd "$home_directory" || { echo "No se pudo volver al directorio original."; exit 1; }
echo "Volviste al directorio original: $(pwd)"

