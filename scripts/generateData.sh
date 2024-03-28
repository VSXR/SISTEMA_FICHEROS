#!/bin/bash

generateDataFunction() {
    DIR_OPERACIONES="$HOME/Descargas/SISTEMA_FICHEROS/data"
    LOG_DIR="$HOME/Descargas/SISTEMA_FICHEROS/logs"
    LOG_FILE="$LOG_DIR/file_Log.log"
    MIN_SUCURSALES=4
    MAX_SUCURSALES=10

    if [ ! -d "$LOG_DIR" ]; then
        mkdir -p "$LOG_DIR"
    fi

    COUNTER=0
    if [ -f "$LOG_FILE" ]; then
        COUNTER=$(grep -c ">> Actualización del programa" "$LOG_FILE")
    fi

    ((COUNTER++))

    # Formula para generar un número aleatorio dentro del rango especificado
    NUM_SUCURSALES=$((RANDOM % (MAX_SUCURSALES - MIN_SUCURSALES + 1) + MIN_SUCURSALES))

    for ((i = 1; i <= NUM_SUCURSALES; i++)); do
        sucursal="SU$(printf "%03d" $i)"
        archivo_sucursal="$DIR_OPERACIONES/sucursales/${sucursal}_operaciones.csv"

        echo "$(date +'%d-%m-%Y %H:%M:%S') - Registro número $COUNTER: Se creó el archivo de operaciones para la sucursal $sucursal: $archivo_sucursal" >> "$LOG_FILE"
        mkdir -p "$DIR_OPERACIONES/sucursales"

        # Escribir en el archivo de la sucursal destinada
        echo "IdOperacion;FECHA_INICIO;FECHA_FIN;IdUsuario;IdTipoOperacion;NoOperación;Importe;Estado" > "$archivo_sucursal"

        # Escribir en el archivo consolidado.csv
        CONSOLIDADO_CSV="$DIR_OPERACIONES/consolidado.csv"
        echo "$(date +'%d-%m-%Y %H:%M:%S') - Registro número $COUNTER: Se escribieron operaciones de la sucursal $sucursal en el archivo consolidado" >> "$LOG_FILE"
        tail -n +2 "$archivo_sucursal" >> "$CONSOLIDADO_CSV"
    done

    # Actualizar el archivo de registro con el nuevo contador
    echo "$(date +'%d-%m-%Y %H:%M:%S') - Actualización del programa - Ejecución número $COUNTER" >> "$LOG_FILE"
}

generateDataFunction
