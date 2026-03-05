# MÓD 7: K8S
## TEMA 7.2: OPERACIÓN
### SUBTEMA 7.2.2: AUTOSCALING (HPA/VPA)

Escala automática según métricas. HPA = horizontal (más Pods). VPA = vertical (más CPU/RAM).

## HPA (Horizontal Pod Autoscaler)
```yaml
apiVersion: autoscaling/v2
kind: HorizontalPodAutoscaler
metadata:
  name: app-hpa
spec:
  scaleTargetRef:
    apiVersion: apps/v1
    kind: Deployment
    name: app
  minReplicas: 2
  maxReplicas: 10
  metrics:
  - type: Resource
    resource:
      name: cpu
      target:
        type: Utilization
        averageUtilization: 70
```

Si CPU > 70%, crea más Pods. Si CPU < 70%, elimina Pods.

## VPA (Vertical Pod Autoscaler)
Ajusta requests/limits de CPU/RAM sin cambiar número de Pods. Útil cuando app no escala horizontalmente.

## Cluster Autoscaler
Añade/quita nodes del cluster según demanda de Pods pendientes.

Resumen: HPA = más Pods. VPA = Pods más grandes. Cluster AS = más nodos.
