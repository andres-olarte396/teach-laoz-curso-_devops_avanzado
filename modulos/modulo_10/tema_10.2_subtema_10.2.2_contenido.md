# MÓD 10
## TEMA 10.2
### SUBTEMA 10.2.2: RESERVED INSTANCES Y SPOT

Pagar menos por mismo compute. RI = commitment. Spot = opportunistic.

## On-Demand (baseline)
$0.10/hora. Flexibility total. Paga más.

## Reserved Instances (1-3 años)
Compromiso: uso X horas/día durante Y años → 40-60% descuento.
```
t3.medium On-Demand: $0.04/hr
t3.medium RI (3 years): $0.024/hr (40% off)
```

**Cuándo**: Workloads predecibles (DB, base load).

## Spot Instances
Unused EC2 capacity. 70-90% descuento. AWS puede terminate con 2 min notice.

**Cuándo**: Batch processing, ML training, stateless workers.

## Savings Plans
Flexible RI. Commit a $X/hour, cualquier instancia tipo.

Resumen: On-Demand = caro pero flexible. RI = barato pero locked. Spot = muy barato pero terminable. Mix para optimizar costo.
