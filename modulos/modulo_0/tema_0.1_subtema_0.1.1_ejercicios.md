# BANCO DE EJERCICIOS: MÓDULO 0 - SUBTEMA 0.1.1
## ARQUITECTURA DEL KERNEL Y SHELL

### EJERCICIO 1: Detective de System Calls
**Dificultad**: ⭐ Básico
**Tipo**: Análisis
**Objetivo**: Identificar la interacción programa-kernel.

**Enunciado**:
Usa el comando `strace` para analizar el comando `pwd`.
1. Ejecuta `strace pwd`.
2. Identifica la llamada al sistema que realmente obtiene el directorio actual. (Pista: busca algo que suene a "Current Working Directory").

**Solución Esperada**:
La syscall es `getcwd`.
```bash
getcwd("/home/usuario", 4096) = 14
```

---

### EJERCICIO 2: El misterio de la variable perdida
**Dificultad**: ⭐⭐ Intermedio
**Tipo**: Debugging
**Objetivo**: Diferenciar scope de variables (Shell vs Environment).

**Enunciado**:
Tienes el siguiente script `saludo.sh`:
```bash
#!/bin/bash
echo "Hola, $NOMBRE"
```
Y ejecutas en tu terminal:
```bash
NOMBRE="Juan"
./saludo.sh
```
El output es `Hola, `. ¿Por qué? ¿Cómo lo arreglas sin modificar el script `saludo.sh`?

**Solución**:
El script `saludo.sh` se ejecuta en un sub-shell (un proceso hijo). La variable `NOMBRE` fue definida como variable local del shell padre, por lo que no se heredó.
**Fix**: `export NOMBRE="Juan"` antes de ejecutar el script.

---

### EJERCICIO 3: Explorando /proc
**Dificultad**: ⭐⭐ Intermedio
**Tipo**: Investigación
**Objetivo**: Extraer información del Kernel sin herramientas estándar.

**Enunciado**:
Sin usar el comando `uptime`, encuentra cuánto tiempo lleva encendido el sistema leyendo directamente un archivo en `/proc`.

**Solución**:
```bash
cat /proc/uptime
```
El primer número son los segundos que el sistema ha estado activo.
