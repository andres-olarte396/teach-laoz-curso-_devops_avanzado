# MÓD 11: SRE (SITE RELIABILITY ENGINEERING)
## TEMA 11.1: SLI/SLO/SLA
### SUBTEMA 11.1.1: ERROR BUDGETS

SRE = DevOps con métricas cuantificables. Error Budget = cuánto puedes fallar sin romper promesas.

## Definiciones
- **SLI (Service Level Indicator)**: Métrica medible (ej. latency p99 < 200ms).
- **SLO (Service Level Objective)**: Target interno (ej. 99.9% uptime).
- **SLA (Service Level Agreement)**: Contrato legal con cliente (ej. 99.5% uptime o reembolso).

## Error Budget
Si SLO = 99.9% uptime mensual:
- Downtime permitido = 0.1% = 43 minutos/mes
- **Error Budget** = 43 minutos

Gastaste 20 min en incident → quedan 23 min de budget.

## Cómo se usa
- Budget sobrante → Deploy features rápido.
- Budget gastado → Freeze deploys, focus en confiabilidad.

Resumen: SLO define target. Error Budget = cuánto downtime aceptable. Balancea velocidad vs estabilidad.
