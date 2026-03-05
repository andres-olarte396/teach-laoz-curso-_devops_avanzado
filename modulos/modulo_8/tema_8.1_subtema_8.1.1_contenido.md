# MÓD 8: OBSERVABILIDAD (O11Y)
## TEMA 8.1: LOS 3 PILARES
### SUBTEMA 8.1.1: MÉTRICAS (PROMETHEUS)

Observabilidad = responder "¿POR QUÉ está fallando?" no solo "¿Está fallando?". Los 3 pilares: Métricas, Logs, Trazas.

## Prometheus
Time-series DB. Pull-based. Scrapes métricas de /metrics endpoints.

## Tipos de métricas
- **Counter**: Solo incrementa (requests_total).
- **Gauge**: Sube/baja (memory_usage).
- **Histogram**: Distribución (latency buckets).
- **Summary**: Percentiles (p50, p95, p99).

## Instrumentación
```go
// Go example
requestsTotal := prometheus.NewCounterVec(
    prometheus.CounterOpts{Name: "http_requests_total"},
    []string{"method", "endpoint"},
)
requestsTotal.WithLabelValues("GET", "/api").Inc()
```

## PromQL
```
rate(http_requests_total[5m])  # Requests/sec últimos 5min
histogram_quantile(0.95, http_latency_bucket)  # P95 latency
```

## RED Method
- **Rate**: Requests/sec
- **Errors**: Error rate
- **Duration**: Latency

Resumen: Prometheus = métricas time-series. Instrument código, scrape /metrics, query con PromQL.
