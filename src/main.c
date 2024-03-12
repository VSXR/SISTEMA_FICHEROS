// BIBLIOTECAS
#include <pthread.h>  // concurrencia/multihilo
#include <stdio.h>    // estándar de entrada/salida
#include <stdlib.h>   // estándar de funciones de utilidad general
#include <string.h>   // manejo de cadenas de caracteres
#include <ctype.h>    // funciones para manipular caracteres
#include <time.h>     // manejo de tiempo
#include <errno.h>    // manejo de errores

#include "../../SISTEMA_FICHEROS/include/config_parser.h"
#include "../../SISTEMA_FICHEROS/include/consolidado.h"
#include "../../SISTEMA_FICHEROS/include/file_processor.h"
#include "../../SISTEMA_FICHEROS/include/logger.h"
#include "../../SISTEMA_FICHEROS/include/monitor.h"
#include "../../SISTEMA_FICHEROS/include/patrones_semafaro.h"

/* --> RUTAS DE ARCHIVOS EN CARPETA SISTEMA_FICHEROS
-------------------------------------------------------
 ../../SISTEMA_FICHEROS/
-------------------------------------------------------

 --->> PORFAVOR, NO TOCAR .GITIGNORE :) <<---

 ../../SISTEMA_FICHEROS/data/consolidado.csv

 ../../SISTEMA_FICHEROS/logs/log_File.log
 
 ../../SISTEMA_FICHEROS/fp.conf

 ../../SISTEMA_FICHEROS/scripts/generateData.sh
-------------------------------------------------------*/

int main(void) {
    
    printf("good");
    return 0;
}