# PdM_TPfinal
Este repositorio contiene la documentación del TP final de la materia Programación de Microcontroladores (PdM) -  Protocolos de comunicación en S.E. (PCSE) del CESE

## Estructura
```
TPF/
├── Drivers/
│   ├── API/                   <-- Capa de Abstracción (PdM)
│   │   ├── Inc/
│   │   │   ├── API_delay.h    <-- Gestión de tiempos no bloqueantes
│   │   │   ├── API_lcd.h      <-- Funciones de alto nivel del display
│   │   │   ├── API_mpu6050.h  <-- Funciones de alto nivel de la IMU
│   │   │   ├── APILCD_port.h  <-- Interfaz de bajo nivel del LCD (PCSE)
│   │   │   └── MPU_port.h     <-- Interfaz de bajo nivel de la IMU (PCSE)
│   │   └── Src/
│   │       ├── API_delay.c    <-- Implementación de retardos no bloqueantes (PdM)
│   │       ├── API_lcd.c      <-- Lógica del LCD (PCSE)
│   │       ├── API_mpu6050.c  <-- Lógica de procesamiento de ángulos (PCSE)
│   │       ├── APILCD_port.c  <-- Driver I2C + Modo 4 bits (PdM/PCSE)
│   │       └── MPU_port.c     <-- Driver I2C: Lectura/Escritura Registros(PCSE)
│   └── STM32F4xx_HAL_Driver/  <-- Capa de Hardware 
├── Core/
│   ├── Inc/
│   │   └── main.h             <-- Definiciones globales
│   └── Src/
│       └── main.c             <-- Implementación de la MEF (Tabla 1  PdM)
└── TPF.ioc            <-- Configuración de hardware (84MHz, I2C1, GPIO)
```
