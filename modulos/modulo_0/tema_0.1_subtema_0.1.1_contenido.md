# MÓDULO 0: DIAGNÓSTICO Y NIVELACIÓN
## TEMA 0.1: EL ECOSISTEMA LINUX
### SUBTEMA 0.1.1: ARQUITECTURA DEL KERNEL Y SHELL

**Tiempo estimado**: 60 minutos
**Nivel**: Básico/Intermedio
**Prerrequisitos**: Ninguno

## ¿Por qué importa este concepto?

Antes de escribir tu primer pipeline de CI/CD o desplegar un contenedor, debes entender dónde se ejecutan tus aplicaciones. Linux no es una caja negra; es un sistema de capas. Entender la diferencia entre el Kernel (el núcleo que habla con el hardware) y el Shell (la interfaz que habla contigo) es fundamental para depurar errores de permisos, entender por qué un script falla en el arranque, o configurar correctamente los recursos de un contenedor Docker.

## Comprensión intuitiva

Imagina un restaurante:
- **El Hardware** es la cocina (estufas, ingredientes).
- **El Kernel** es el Jefe de Cocina. Él decide quién usa qué estufa, gestiona los ingredientes (memoria) y asegura que nadie se queme. Tú no hablas con él directamente.
- **El Shell** es el Camarero. Tú (el usuario) le das una orden ("¡Quiero listar archivos!"). El camarero lleva la orden a la cocina, el Jefe de Cocina la ejecuta, y el camarero te trae el plato (el resultado).
- **Las Aplicaciones** son los clientes que piden cosas.

Si el camarero (Shell) no entiende tu idioma, no comerás. Si el Jefe de Cocina (Kernel) colapsa, el restaurante cierra.

## Definición formal

> **Kernel**: Es el núcleo del sistema operativo. Gestiona los recursos del sistema (CPU, Memoria, I/O) y provee una capa de abstracción para el hardware. Se ejecuta en "Kernel Space" (modo privilegiado).
> **Shell**: Es un intérprete de comandos que se ejecuta en "User Space". Actúa como interfaz entre el usuario y el Kernel mediante System Calls (llamadas al sistema).

### El flujo de una orden
1.  **Usuario**: Escribe `ls` en la terminal.
2.  **Shell**: Interpreta el texto, busca el programa `ls` en el `$PATH`.
3.  **Syscall**: El shell invoca `fork()` y `exec()` (llamadas al sistema) para pedirle al Kernel que inicie un proceso.
4.  **Kernel**: Asigna memoria, carga el ejecutable del disco y lo pone en la cola de la CPU.
5.  **Hardware**: La CPU ejecuta las instrucciones.
6.  **Output**: El resultado viaja de vuelta al Shell y se muestra en tu pantalla (`stdout`).

## Implementación práctica: Explorando las capas

Vamos a usar comandos para "ver" estas capas en acción.

### 1. Identificando tu Shell
¿Qué camarero te está atendiendo?

```bash
echo $SHELL
# Output típico: /bin/bash o /bin/zsh
```

### 2. Hablando con el Kernel
El directorio `/proc` es una ventana directa al cerebro del Kernel. No son archivos reales en disco, son estructuras de datos del Kernel presentadas como archivos.

```bash
# Ver información de la CPU directamente del Kernel
cat /proc/cpuinfo

# Ver la versión del Kernel que se está ejecutando
uname -r
# Output ejemplo: 5.15.0-1053-aws
```

### 3. Trazando System Calls (strace)
Esta es la herramienta definitiva para ver la conversación entre un programa y el Kernel.

```bash
# Ejecuta 'ls' y muestra todas las llamadas al sistema
strace ls
```

Verás una lluvia de información. Busca líneas como:
- `openat(...)`: Abriendo archivos.
- `mmap(...)`: Asignando memoria.
- `write(1, ...)`: Escribiendo en pantalla.

**Ejercicio rápido**:
Ejecuta `strace echo "Hola"`.
¿Puedes encontrar la línea donde se llama a `write` para imprimir "Hola"?

## Trampas y Errores Comunes

### ❌ Error: Confundir variables de Shell con variables de Entorno
- **Variable de Shell**: Solo existe en tu sesión actual de terminal.
- **Variable de Entorno**: Se hereda a los procesos hijos (como scripts o programas que lances).

```bash
# Variable de Shell (Local)
MI_VAR="Hola"
bash -c 'echo $MI_VAR' # Output: (vacío) -> El hijo no la ve

# Variable de Entorno (Exportada)
export MI_VAR="Hola"
bash -c 'echo $MI_VAR' # Output: Hola -> El hijo la heredó
```

## Resumen del concepto

**En una frase**: El Shell es tu intérprete; el Kernel es el ejecutor.
**Cuándo usarlo**: Siempre que interactúas con la terminal. `strace` es tu mejor amigo para depurar problemas de ejecución.
**Siguiente paso**: Ahora que entendemos quién ejecuta las órdenes, vamos a aprender a controlar esos procesos en el **Subtema 0.1.2: Gestión de Procesos**.
