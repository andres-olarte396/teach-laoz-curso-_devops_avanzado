# CUESTIONARIO: MONOREPOS VS POLYREPOS

### Pregunta 1: Señal de Monorepo
¿Cuál es la señal más clara de que deberías usar un monorepo en lugar de polyrepo?
- a) Tienes más de 5 desarrolladores.
- b) Frecuentemente necesitas hacer cambios atómicos que afectan múltiples servicios.
- c) Usas Docker.

### Pregunta 2: Tooling
¿Por qué un monorepo grande requiere herramientas especiales como Bazel o Nx?
- a) Para hacer Git más rápido.
- b) Para detectar qué proyectos cambiaron y solo rebuild esos (incremental builds).
- c) Para encriptar el código.

### Pregunta 3: Trade-off
¿Cuál es la principal desventaja de polyrepo?
- a) Es más caro en hosting.
- b) Requiere sincronizar cambios en dependencias compartidas across múltiples repos.
- c) No funciona con CI/CD.

---

# SOLUCIONARIO

### Pregunta 1
**Respuesta**: b) Cambios atómicos cross-servicios.
**Razón**: Si siempre despliegas servicios juntos o refactorizas interfaces compartidas, monorepo evita el infierno de sincronización.

### Pregunta 2
**Respuesta**: b) Incremental builds.
**Razón**: Rebuilds todo el repo cada commit es inviable. Nx/Bazel construyen solo lo afectado por el cambio.

### Pregunta 3
**Respuesta**: b) Sincronización de dependencias.
**Razón**: Actualizar una lib compartida requiere múltiples PRs, lo que añade fricción y tiempo.
