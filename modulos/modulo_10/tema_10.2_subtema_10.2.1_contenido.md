# MÓD 10
## TEMA 10.2: COST OPTIMIZATION
### SUBTEMA 10.2.1: FINOPS Y TAGGING

FinOps = gestión financiera de cloud. Sin control, cloud bill explota.

## Problema: Shadow IT
Devs crean recursos sin ownership. Nadie los apaga. Factura crece.

## Solución: Tagging Strategy
```
resource "aws_instance" "web" {
  tags = {
    Environment = "production"
    Team        = "backend"
    CostCenter  = "engineering"
    Owner       = "john@company.com"
    Project     = "payment-api"
  }
}
```

## Cost allocation
Con tags, sabes:
- ¿Cuánto gasta team backend vs frontend?
- ¿Cuánto cuesta proyecto X vs proyecto Y?

## Alertas
```bash
# Alert si mensual > $10k
aws budgets create-budget --budget '{"BudgetLimit":{"Amount":"10000","Unit":"USD"}}'
```

## Right-sizing
Identifica instancias oversized. t3.large con 10% CPU → downgrade a t3.medium.

Resumen: Tagging obligatorio. Cost allocation reports. Alertas. Right-sizing. FinOps = DevOps + finance.
