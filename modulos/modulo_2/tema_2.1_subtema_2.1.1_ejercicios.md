# BANCO DE EJERCICIOS: MÓDULO 2 - SUBTEMA 2.1.1
## GITFLOW VS TRUNK-BASED

### EJERCICIO 1: Análisis de Contexto
**Dificultad**: ⭐⭐ Intermedio
**Tipo**: Decisión Estratégica
**Objetivo**: Elegir la estrategia correcta según el contexto.

**Enunciado**:
Eres el líder técnico de dos proyectos diferentes. Decide qué estrategia de ramificación usar:

**Proyecto A**: App móvil iOS que requiere aprobación de Apple (7-14 días de review). Releases mensuales planeados.

**Proyecto B**: SaaS web con 50 deploys al día usando blue-green deployment.

¿GitFlow o Trunk-Based para cada uno? Justifica.

**Solución**:
- **Proyecto A**: **GitFlow**. Los tiempos de release son fijos y predecibles. Necesitas ramas `release/*` para preparar el paquete y hacer hotfixes sin bloquear el desarrollo de la próxima versión.
- **Proyecto B**: **Trunk-Based**. Alta frecuencia de despliegues requiere integración continua. GitFlow añadiría fricción innecesaria.

---

### EJERCICIO 2: Feature Flags en Acción
**Dificultad**: ⭐⭐ Intermedio
**Tipo**: Codificación
**Objetivo**: Implementar trunk-based con una feature incompleta.

**Enunciado**:
Estás desarrollando un nuevo sistema de notificaciones que tomará 10 días. Usas Trunk-Based. Escribe el pseudocódigo para integrar código daily usando feature flags.

**Solución**:
```javascript
// Día 1: Infraestructura básica (apagada)
if (flags.isEnabled('new-notifications')) {
    loadNewNotificationService();
} else {
    loadOldNotifications(); // Sistema actual
}

// Día 5: Medio completado, sigue apagado
if (flags.isEnabled('new-notifications')) {
    const service = new NotificationServiceV2(); // 50% done
    service.partialFeature();
} else {
    loadOldNotifications();
}

// Día 10: Completado, encender en producción
// Cambiar flag en dashboard: new-notifications = TRUE
```

---

### EJERCICIO 3: Merge Hell
**Dificultad**: ⭐⭐⭐ Avanzado
**Tipo**: Simulación
**Objetivo**: Experimentar el "Merge Hell" de GitFlow.

**Enunciado**:
Tres desarrolladores trabajan en ramas separadas durante 2 semanas:
- Dev A modifica `auth.js` líneas 10-50.
- Dev B refactoriza `auth.js` líneas 30-80.
- Dev C elimina `auth.js` y crea `auth/` directory con múltiples archivos.

Todos intentan merge a `develop` el mismo día. ¿Qué sucede? ¿Cómo lo previene Trunk-Based?

**Solución**:
- **GitFlow**: Merge Hell total. Los conflictos son masivos y semánticos (no solo sintácticos). Se pierde 1 día resolviendo.
- **Trunk-Based**: Si integran diariamente, Dev A termina su cambio el día 1. Dev B ve el cambio de A el día 2 y ajusta. Dev C propone la refactorización grande en un design doc antes de empezar. La arquitectura se coordina antes del código.
