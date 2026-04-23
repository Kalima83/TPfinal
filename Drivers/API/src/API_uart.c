/*
 * API_uart.c
 */

#include "API_uart.h"
#include "API_uart_port.h"
#include <string.h>
#include <stddef.h>

bool_t uartInit(uint32_t baudrate) {
    if (!uartPortConfig(baudrate)) return false;

    uint8_t msg[] = "\r\n--- UART Inicializada correctamente ---\r\n";
    uartPortSend(msg, sizeof(msg)-1);
    return true;
}

void uartSendString(uint8_t * pstring) {
    if (pstring != NULL) {
        uartPortSend(pstring, (uint16_t)strlen((char*)pstring));
    }
}

bool_t uartReceiveByte(uint8_t * pByte) {
    return uartPortReceiveByte(pByte);
}

/*
 * Imprime un string en la consola serie y prepara el cursor
 * para sobreescribir la misma línea en la próxima escritura.
 * se usa para imprimir los ángulos
 */
void uartOverwriteLine(uint8_t * pstring) {
    // Imprime el mensaje que manda el usuario
    uartSendString(pstring);

    // Imprime un bloque de espacios para limpiar la "basura"
    // Esto asegura que si el texto nuevo es más corto que el anterior,
    // no queden letras viejas al final del renglón.
    uartSendString((uint8_t*)"          ");

    // Manda el "Carriage Return" (\r) SIN el salto de línea (\n)
    // Esto retrocede el cursor a la columna 0 del mismo renglón.
    uartSendString((uint8_t*)"\r");
}
