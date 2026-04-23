# PdM_TPfinal
Este repositorio contiene la documentación del TP final de la materia Programación de Microcontroladores (PdM) -  Protocolos de comunicación en S.E. (PCSE) del CESE

## Arquitectura de Software y Capas de Abstracción
El TPF se diseñó siguiendo un modelo de capas para garantizar la independencia del hardware y facilitar el mantenimiento, cumpliendo con los requisitos de las materias PdM y PCSE.
### Capa de Aplicación (main.c):
Implementa la lógica de control mediante una Máquina de Estados Finitos (MEF) que gestiona los estados del sistema.
### Capa de API (Alto Nivel):
Proporciona funciones de nivel de aplicación para el manejo del LCD (API_lcd), la MPU6050 (API_mpu6050) y la gestión de tiempos no bloqueantes (API_delay).
### Capa de Portabilidad (Bajo Nivel / Port):
Archivos APILCD_port y MPU_port que encapsulan las llamadas a la biblioteca HAL de ST y la configuración específica del protocolo I2C. Esta capa aísla la complejidad del hardware y permite migrar el proyecto a otros microcontroladores o buses de comunicación sin modificar la lógica de alto nivel.
### Lógica de Control (MEF)
El sistema opera bajo una MEF robusta con los siguientes estados:
  * ESTADO_INIT_CALIB: Inicialización de periféricos y calibración de los sensores (MPU6050).
  * ESTADO_IDLE: Estado de espera de baja actividad hasta que se detecta la pulsación del botón de usuario (B1).
  * ESTADO_READING: Adquisición de datos de acelerometría y giro en tiempo real, con actualización visual en el display LCD mediante retardos no bloqueantes.
  * ESTADO_ERROR: Gestión de excepciones ante fallos de comunicación en el bus I2C. El sistema notifica el error y realiza un reintento automático de inicialización para garantizar la disponibilidad del equipo.

## Estructura
```
TPF/
├── Drivers/
│   ├── API/                        <-- Capa de Abstracción (PdM)
│   │   ├── Inc/                    <-- Encabezados Públicos y Privados
│   │   │   ├── API_debounce.h      <-- Control antirebote
│   │   │   ├── API_delay.h         <-- Gestión de tiempos no bloqueantes
│   │   │   ├── API_lcd.h           <-- Funciones de alto nivel del display
│   │   │   ├── API_mpu6050.h       <-- Funciones de alto nivel de la IMU
│   │   │   ├── API_uart.h          <-- Driver de comunicación serie
│   │   │   ├── API_cmdparser.h     <-- Procesador de comandos 
│   │   │   ├── APILCD_port.h       <-- Interfaz de bajo nivel del LCD (PCSE)
│   │   │   └── MPU_port.h          <-- Interfaz de bajo nivel de la IMU (PCSE)
│   │   └── Src/                    <-- Implementación de Capas
│   │       ├── API_debounce.h      <-- Control antirebote
│   │       ├── API_delay.c         <-- Lógica de retardos y timers (PdM)
│   │       ├── API_lcd.c           <-- Lógica de control del display (PdM)
│   │       ├── API_mpu6050.c       <-- Procesamiento de datos de la IMU
│   │       ├── API_uart.c          <-- Manejo de la HAL UART
│   │       ├── API_cmdparser.c     <-- MEF del analizador de comandos
│   │       ├── APILCD_port.c       <-- Implementación I2C y protocolo 4-bits
│   │       └── MPU_port.c          <-- Acceso a registros I2C del sensor
│   └── STM32F4xx_HAL_Driver/       <-- Drivers oficiales de ST (Hardware)
├── Core/
│   ├── Inc/
│   │   ├── main.h                  <-- Definiciones de hardware y prototipos
│   │   ├── stm32f4xx_hal_conf.h    <-- Configuración de módulos HAL (I2C/UART)
│   │   └── stm32f4xx_it.h          <-- Manejadores de interrupciones
│   └── Src/
│       ├── main.c                  <-- Implementación de la MEF Principal
│       ├── stm32f4xx_hal_msp.c     <-- Inicialización de bajo nivel (I2C/UART)
│       └── stm32f4xx_it.c          <-- Rutinas de servicio de interrupción
└── TPF.ioc                         <-- Configuración gráfica de periféricos y reloj
```
