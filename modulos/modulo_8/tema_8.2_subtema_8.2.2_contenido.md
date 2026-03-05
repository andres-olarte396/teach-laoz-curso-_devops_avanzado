# MÓD 8
## TEMA 8.2
### SUBTEMA 8.2.2: DASHBOARDS EN GRAFANA

Grafana = visualización universal. Conecta a Prometheus, Loki, Jaeger.

## Panel types
- **Graph**: Time-series (CPU, latency over time)
- **Gauge**: Valor actual (% memory)
- **Heatmap**: Distribución (latency buckets)
- **Table**: Tabular data

## Dashboard operativo típico
```
Row 1: Golden Signals
  - Requests/sec
  - Error rate %
  - P99 latency

Row 2: Resources
  - CPU usage
  - Memory usage
  - Disk I/O

Row 3: Business metrics
  - Active users
  - Revenue/hour
```

## Alertas
Grafana → Alert cuando `error_rate > 1%` → PagerDuty/Slack.

Resumen: Grafana = UI universal para métricas/logs/traces. Dashboards + alertas. Conecta a data sources.
