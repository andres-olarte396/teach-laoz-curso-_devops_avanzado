# MÓD 8
## TEMA 8.2: TRACING Y VISUALIZACIÓN
### SUBTEMA 8.2.1: DISTRIBUTED TRACING (OPENTELEMETRY)

En microservicios, 1 request toca 5+ servicios. Tracing reconstruye el path completo.

## Problema
Request falla. ¿En qué servicio? ¿Cuál llamada fue lenta?

## OpenTelemetry
Estándar para instrumentación. Genera spans (segmentos de work) con trace_id compartido.

```
Request ID: abc123
  [Frontend] 200ms
    → [Auth] 50ms
    → [API] 100ms
      → [Database] 80ms (SLOW!)
```

## Span
```json
{
  "trace_id": "abc123",
  "span_id": "span-456",
  "parent_span_id": "span-123",
  "service": "database",
  "duration_ms": 80,
  "status": "ok"
}
```

## Backends
- **Jaeger**: Tracing UI
- **Tempo**: Grafana Labs
- **Zipkin**: Twitter original

Resumen: Distributed tracing = seguir request a través de N servicios. OpenTelemetry estándar. Jaeger/Tempo para visualizar.
