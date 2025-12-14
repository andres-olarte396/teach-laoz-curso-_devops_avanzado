# MÓD 11
## TEMA 11.2: INCIDENT RESPONSE
### SUBTEMA 11.2.1: POST-MORTEMS BLAMELESS

Post-mortem = análisis después del incidente. Blameless = sin culpar personas.

## Estructura
1. **What happened**: Timeline cronológico del incidente.
2. **Impact**: Usuarios afectados, $ lost, downtime.
3. **Root cause**: Por qué falló (no quién).
4. **Action items**: Qué cambiar para prevenir recurrencia.

## Ejemplo
```
Incidente: API down 2 horas
Root cause: Deploy rompió DB migration
Action items:
- [ ] Añadir canary deploys
- [ ] Pre-deploy migration tests
- [ ] Alertas si error rate > 1%
```

## Blameless culture
No "Juan rompió producción". Sí "Sistema permitió deploy inseguro sin validación".

Resumen: Post-mortem documenta qué, por qué, cómo prevenir. Blameless = mejora sistema, no castiga personas.
