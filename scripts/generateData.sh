#!/bin/bash

generateDataFunction() {
    DIR_OPERACIONES="$HOME/Descargas/SISTEMA_FICHEROS/data"
    LOG_FILE="$HOME/Descargas/SISTEMA_FICHEROS/logs/file_Log.log"

    for sucursal in SU001 SU002 SU003 SU004; do
        archivo_sucursal="$DIR_OPERACIONES/${sucursal}_operaciones.csv"
        echo "$(date +'%d-%m-%Y %H:%M:%S') - Se creó el archivo de operaciones para la sucursal $sucursal: $archivo_sucursal" >> "$LOG_FILE"
        echo "IdOperacion;FECHA_INICIO;FECHA_FIN;IdUsuario;IdTipoOperacion;NoOperación;Importe;Estado" > "$archivo_sucursal"
    done

    CONSOLIDADO_CSV="$HOME/Descargas/SISTEMA_FICHEROS/data/consolidado.csv"

    for archivo_sucursal in "$DIR_OPERACIONES"/*_operaciones.csv; do
        if [ -f "$archivo_sucursal" ]; then
            echo "$(date +'%d-%m-%Y %H:%M:%S') - Se escribieron operaciones de la sucursal $(basename "$archivo_sucursal") en el archivo consolidado" >> "$LOG_FILE"
            tail -n +2 "$archivo_sucursal" >> "$CONSOLIDADO_CSV"
        fi
    done
}

generateDataFunction
