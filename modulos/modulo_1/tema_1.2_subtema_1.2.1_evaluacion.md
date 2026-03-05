# CUESTIONARIO: ROLES Y RESPONSABILIDADES

## Instrucciones
Responde para validar tu comprensión sobre los roles en un entorno DevOps.

### Pregunta 1: El objetivo del Ingeniero de Plataforma
¿Cuál es la misión principal de un Platform Engineer en un entorno DevOps maduro?
- a) Desplegar manualmente cada cambio de los desarrolladores para asegurar calidad.
- b) Construir una plataforma de auto-servicio (IDP) que permita a los desarrolladores ser autónomos.
- c) Vigilar a los desarrolladores para que no rompan nada.

### Pregunta 2: SRE vs DevOps
¿Cuál es la relación entre SRE (Site Reliability Engineering) y DevOps?
- a) Son filosofías opuestas que compiten entre sí.
- b) SRE es una implementación específica y prescriptiva de la filosofía DevOps (clase implementa interfaz).
- c) SRE es solo para Google, DevOps es para el resto.

### Pregunta 3: El Anti-patrón del "Equipo DevOps"
¿Qué sucede cuando se crea un "Equipo DevOps" aislado que actúa como intermediario entre Dev y Ops?
- a) Se mejora la comunicación inmediatamente.
- b) Se crea un nuevo silo, convirtiendo el "Muro de la Confusión" en dos muros.
- c) Se eliminan todos los problemas de infraestructura.

---

# SOLUCIONARIO

### Pregunta 1
**Respuesta Correcta**: b) Construir una plataforma de auto-servicio.
**¿Por qué?**: El objetivo es eliminar bloqueos. Si el desarrollador depende de ti para cada acción, no hay agilidad. La plataforma debe empoderar, no restringir.

### Pregunta 2
**Respuesta Correcta**: b) SRE es una implementación específica de DevOps.
**¿Por qué?**: Google define SRE como "lo que sucede cuando le pides a un ingeniero de software que diseñe un equipo de operaciones". SRE pone reglas y métricas concretas a la filosofía abstracta de DevOps.

### Pregunta 3
**Respuesta Correcta**: b) Se crea un nuevo silo.
**¿Por qué?**: Es el anti-patrón más común. En lugar de colaboración, tienes un equipo al que Dev le tira código y que luego le tira código a Ops (o a la infraestructura), sin responsabilidad compartida real.
