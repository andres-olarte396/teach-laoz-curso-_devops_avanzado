# MÓD 8
## TEMA 8.1
### SUBTEMA 8.1.2: LOGS ESTRUCTURADOS

Logs estructurados (JSON) > logs texto. Parseables, queryables.

## MALO (texto plano)
```
2024-01-15 14:32:11 ERROR User login failed for john@example.com
```

## BUENO (JSON)
```json
{
  "timestamp": "2024-01-15T14:32:11Z",
  "level": "error",
  "message": "User login failed",
  "email": "john@example.com",
  "ip": "192.168.1.1"
}
```

## Ventajas
- Parseo automático (no regex)
- Filtros precisos (`level=error AND email=john@*`)
- Agregación (count by level)

## Stack ELK/Loki
- **ELK**: Elasticsearch + Logstash + Kibana
- **Loki**: Prometheus-style for logs (más ligero)

Resumen: Logs estructurados JSON. ELK o Loki para centralización. Query con fields, no regex.
