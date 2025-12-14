# CUESTIONARIO: ARQUITECTURA DEL KERNEL Y SHELL

## Instrucciones
Responde para validar tu comprensión del ecosistema Linux.

### Pregunta 1: El Jefe de Cocina
Si el Kernel es el Jefe de Cocina y el Shell es el Camarero, ¿qué representa una "System Call" (Llamada al Sistema)?
- a) El menú que lee el cliente.
- b) La nota escrita que el camarero pasa a la cocina.
- c) La propina que dejas al final.

### Pregunta 2: Espacios de Memoria
¿Qué sucede si un programa en "User Space" (como tu navegador) intenta acceder directamente a la memoria RAM reservada para el hardware sin pasar por el Kernel?
- a) El Kernel bloquea la acción y probablemente mata el proceso (Segmentation Fault).
- b) El programa toma el control del hardware exitosamente.
- c) El sistema se reinicia automáticamente para protegerse.

### Pregunta 3: Herencia de Variables
Defines `COLOR="Rojo"` en tu terminal. Luego ejecutas un script `pintar.sh`. Dentro del script, intentas leer `$COLOR` y está vacío. ¿Qué faltó?
- a) El script tiene un error de sintaxis.
- b) Debiste usar `export COLOR="Rojo"` para convertirla en variable de entorno.
- c) El Kernel no soporta colores.

---

# SOLUCIONARIO

### Pregunta 1
**Respuesta Correcta**: b) La nota escrita que el camarero pasa a la cocina.
**¿Por qué?**: La System Call es el mecanismo de petición explícito. El Shell (camarero) no cocina, solo transmite la petición (nota) al Kernel (cocina) usando un formato estandarizado.

### Pregunta 2
**Respuesta Correcta**: a) El Kernel bloquea la acción y probablemente mata el proceso.
**¿Por qué?**: El hardware impone protección de memoria. Solo el Kernel (en modo privilegiado) puede acceder a todo. Si un proceso de usuario intenta saltarse las reglas, la CPU lanza una excepción y el Kernel termina el proceso.

### Pregunta 3
**Respuesta Correcta**: b) Debiste usar `export COLOR="Rojo"`.
**¿Por qué?**: Las variables normales son locales al proceso del Shell actual. `export` las marca para ser copiadas al entorno de cualquier proceso hijo que se inicie desde ese Shell.
