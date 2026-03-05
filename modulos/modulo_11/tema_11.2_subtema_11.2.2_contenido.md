# MÓD 11
## TEMA 11.2
### SUBTEMA 11.2.2: ON-CALL ROTATION

On-call = disponible 24/7 para responder incidentes. Rotación equitativa previene burnout.

## Estructura típica
- **Primary**: Responde primero.
- **Secondary**: Backup si primary no responde en 5 min.
- **Rotación**: Weekly o bi-weekly.

## Herramientas
- **PagerDuty**: Gestiona alertas, escalaciones, calendarios.
- **Opsgenie**: Similar, con integraciones.

## Mejores prácticas
1. **Runbooks**: Documentación "si X error, haz Y".
2. **Alert fatigue**: < 5 alerts/semana. Más = burnout.
3. **Compensación**: Días libres post-on-call o pago extra.

## Ejemplo escalation
```
Alert: DB CPU > 90%
  → Primary (5 min)
  → Secondary (10 min)
  → Manager (15 min)
```

Resumen: On-call rotativo. Runbooks claros. Pocas alertas críticas. Compensación por disponibilidad 24/7.
