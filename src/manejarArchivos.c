#include <pthread.h>
#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>
#include <string.h>
#include <ctype.h>
#include <time.h>
#include <errno.h>

#include "../../SISTEMA_FICHEROS/include/manejarArchivos.h"

#define MAX_LINE_LENGTH 200

void EscribirCsv(char *archivoCsv){
    printf("--> ESCRIBIENDO EN EL ARCHIVO 'consolidado.csv'... <--\n\n");

    FILE *archivo = fopen(archivoCsv, "w");

    if (archivo == NULL){
        printf("ERROR AL ABRIR EN EL ARCHIVO 'consolidado.csv'\n");
        return;
    }
    else{
        //ESCRIBIR AQUI
        fprintf(archivo, "IdOperacion;FECHA_INICIO;FECHA_FIN;IdUsuario;IdTipoOperacion;NoOperacion;Importe;Estado");
        //fprintf(archivo, "infoAqui \n")
        fclose(archivo);
    }
}
void LeerCsv(char *archivoCsv){
    printf("--> LEEYENDO EL ARCHIVO 'consolidado.csv'... <--\n\n");

    FILE *archivo = fopen(archivoCsv, "r");
    char line[MAX_LINE_LENGTH];


    if (archivo == NULL){
        printf("ERROR AL ABRIR EN EL ARCHIVO 'consolidado.csv'\n");
        return;
    }
    else{
        //LEEMOS AQUI
        

        fclose(archivo);
    }
}

void EscribirLog(char *archivoLog){
    printf("--> ESCRIBIENDO EN EL ARCHIVO 'registro.log'... <--\n\n");
    
    FILE *archivo = fopen(archivoLog, "w");

    if (archivo == NULL){
        printf("ERROR AL ABRIR EN EL ARCHIVO 'registro.log'\n");
        return;
    }
    else{
        //ESCRIBIR AQUI


        fclose(archivo);
    }
}
void LeerLog(char *archivoLog){
    printf("--> LEEYENDO EL ARCHIVO 'registro.log'... <--\n\n");



}
