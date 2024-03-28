// BIBLIOTECAS
#include <pthread.h>  // concurrencia/multihilo
#include <stdio.h>    // estándar de entrada/salida
#include <stdlib.h>   // estándar de funciones de utilidad general
#include <stdbool.h>  // tipos booleanos y valores true/false
#include <string.h>   // manejo de cadenas de caracteres
#include <ctype.h>    // funciones para manipular caracteres
#include <time.h>     // manejo de tiempo
#include <errno.h>    // manejo de errores

#include "../../SISTEMA_FICHEROS/include/manejarArchivos.h"
#include  "../../SISTEMA_FICHEROS/include/manejarFileProcessor.h"
#include "../../SISTEMA_FICHEROS/include/manejarProcesos.h"
#include  "../../SISTEMA_FICHEROS/include/manejarSemafaro.h"
#include "../../SISTEMA_FICHEROS/include/manejarSucursales.h"


int main(void) {
    system("../../SISTEMA_FICHEROS/scripts/generateFile.sh");
    // char csv[] = "../../SISTEMA_FICHEROS/data/consolidado.csv";
    // char log[] = "../../SISTEMA_FICHEROS/logs/log_File.log";

    // LeerCsv(csv);
    // EscribirCsv(log);
    
    // LeerLog(csv);
    // EscribirLog(log);



    printf("good\n");
    return 0;
}