# CUESTIONARIO: ANTI-PATRONES COMUNES

## Instrucciones
Responde para validar tu capacidad de detectar malas prácticas DevOps.

### Pregunta 1: El peligro del "Héroe"
¿Por qué tener a un "Héroe" que resuelve todos los problemas técnicos es considerado un anti-patrón en DevOps?
- a) Porque cobra muchas horas extra.
- b) Porque representa un punto único de fallo (SPOF) y un cuello de botella para el conocimiento del equipo.
- c) Porque los héroes suelen ser arrogantes.

### Pregunta 2: Cargo Cult
Una startup pequeña decide implementar una arquitectura de microservicios con Kubernetes y Service Mesh desde el día 1, imitando a Netflix. ¿Qué error están cometiendo?
- a) No están usando Docker.
- b) Están adoptando complejidad accidental innecesaria para su escala (Cargo Cult), lo que ralentizará su desarrollo.
- c) Netflix no usa Kubernetes.

### Pregunta 3: El Silo DevOps
Si tu empresa crea un "Departamento DevOps" y ahora los desarrolladores tienen que abrir tickets a este departamento para desplegar, ¿qué has logrado?
- a) Implementar DevOps correctamente.
- b) Crear un nuevo silo y añadir más burocracia al proceso.
- c) Mejorar la seguridad del código.

---

# SOLUCIONARIO

### Pregunta 1
**Respuesta Correcta**: b) Porque representa un punto único de fallo y un cuello de botella.
**¿Por qué?**: El objetivo es la resiliencia organizacional. Si el conocimiento está concentrado en una persona, el sistema es frágil.

### Pregunta 2
**Respuesta Correcta**: b) Están adoptando complejidad accidental innecesaria.
**¿Por qué?**: Las herramientas deben resolver problemas existentes. Adoptar soluciones de "Big Tech" sin tener sus problemas de escala solo añade fricción y mantenimiento innecesario.

### Pregunta 3
**Respuesta Correcta**: b) Crear un nuevo silo.
**¿Por qué?**: DevOps trata de romper barreras, no de crear nuevas. El equipo de plataforma debe habilitar el auto-servicio, no convertirse en otro gatekeeper manual.
