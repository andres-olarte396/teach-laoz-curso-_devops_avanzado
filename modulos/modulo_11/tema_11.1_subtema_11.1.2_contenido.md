# MÓD 11
## TEMA 11.1
### SUBTEMA 11.1.2: TOIL AUTOMATION

Toil = trabajo manual, repetitivo, sin valor permanente. SRE lo elimina.

## Características del Toil
- Manual
- Repetitivo
- Automatizable
- Táctico (no estratégico)
- Crece linear con servicio

## Ejemplo Toil
Reiniciar servicios manualmente cada vez que fallan.

## Automatización
```python
# Liveness probe K8s
livenessProbe:
  httpGet:
    path: /healthz
    port: 8080
  failureThreshold: 3
  periodSeconds: 10
# K8s restart automáticamente si falla
```

## Regla 50%
SRE dedica máximo 50% tiempo a Toil. Resto = engineering (automation, tooling).

Resumen: Toil = trabajo repetitivo manual. Automatízalo. SRE = 50% engineering, 50% ops.
