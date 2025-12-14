# GUIÓN: MONOREPOS VS POLYREPOS
## FICHA TÉCNICA
- **Duración Estimada**: 4 minutos
- **Tono**: Analítico, equilibrado.

---

### 00:00 - INTRODUCCIÓN
**[LOCUTOR]**:
Pregunta de un millón de dólares: ¿Pones todo tu código en un solo repositorio gigante o lo separas en repositorios pequeños independientes?
Google dice: todo en uno. Amazon dice: mil repositorios.
¿Quién tiene razón? Ambos. Y ninguno. Hoy: Monorepo versus Polyrepo.

### 00:30 - MONOREPO
**[LOCUTOR]**:
Imagina que tienes una app web, una app móvil y una API. Todas comparten el mismo modelo de datos.
En un monorepo, viven en el mismo repositorio. Un solo clone, un solo commit puede actualizar las tres.
Ventaja brutal: refactorings atómicos. Cambias una interfaz compartida y automáticamente actualizas todos los consumidores en el mismo commit.
Problema: escalabilidad. Google usa Bazel porque Git solo no puede con un repo de terabytes.

### 01:15 - POLYREPO
**[LOCUTOR]**:
En polyrepo, cada proyecto es un repo separado.
Ventaja: aislamiento. Si el equipo de mobile caga el repo, no afecta a nadie más.
Problema: sincronización. Actualizas una librería compartida y tienes que abrir 10 pull requests en 10 repos diferentes. Es agotador.

### 01:50 - EL CRITERIO DE DECISIÓN
**[LOCUTOR]**:
Aquí está la pregunta clave: ¿Tus servicios se despliegan juntos o independientemente?
Si siempre despliegas todo junto, monorepo.
Si cada servicio tiene su propio ciclo de vida, polyrepo.
No copies a Google solo porque es Google. Ellos tienen herramientas custom que tú no tienes.

### 02:30 - CIERRE
**[LOCUTOR]**:
No hay respuesta correcta universal. Hay contexto.
Siguiente tema: Git Hooks. Automatiza validaciones antes de que el código llegue al repo.
