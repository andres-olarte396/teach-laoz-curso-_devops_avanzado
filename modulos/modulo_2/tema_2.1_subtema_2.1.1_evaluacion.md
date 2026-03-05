# CUESTIONARIO: GITFLOW VS TRUNK-BASED

## Instrucciones
Responde para validar tu comprensión de estrategias de ramificación.

### Pregunta 1: Frecuencia de Integración
En Trunk-Based Development, ¿cuál es la vida máxima recomendada de una rama feature?
- a) 1 semana
- b) 1 día (24 horas)
- c) 1 mes

### Pregunta 2: Feature Flags
¿Por qué son esenciales los Feature Flags en Trunk-Based Development?
- a) Para hacer el código más seguro.
- b) Para poder integrar código incompleto en `main` sin afectar a producción.
- c) Para reemplazar las ramas de Git.

### Pregunta 3: Contexto de GitFlow
¿En cuál escenario GitFlow es más apropiado que Trunk-Based?
- a) Aplicación web SaaS con 50 deploys diarios.
- b) Aplicación móvil con releases mensuales que requieren aprobación de tienda.
- c) Microservicio interno con despliegue continuo.

---

# SOLUCIONARIO

### Pregunta 1
**Respuesta Correcta**: b) 1 día (24 horas).
**¿Por qué?**: La clave de Trunk-Based es la integración frecuente para evitar divergencia. Ramas que viven más de un día acumulan demasiados conflictos potenciales.

### Pregunta 2
**Respuesta Correcta**: b) Para poder integrar código incompleto en `main`.
**¿Por qué?**: Los feature flags permiten "apagar" funcionalidades en desarrollo. Así puedes hacer commits diarios sin romper la experiencia del usuario en producción.

### Pregunta 3
**Respuesta Correcta**: b) Aplicación móvil con releases mensuales.
**¿Por qué?**: GitFlow fue diseñado para software con releases programados y fijos. Las ramas `release/*` permiten preparar la entrega mientras el desarrollo continúa en `develop`.
