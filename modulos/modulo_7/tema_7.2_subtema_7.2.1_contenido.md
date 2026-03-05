# MÓD 7: K8S
## TEMA 7.2: OPERACIÓN AVANZADA
### SUBTEMA 7.2.1: HELM CHARTS

Helm = gestor de paquetes para K8s. Templates + values = manifests.

## Problema
Desplegar app require 10+ YAMLs (Deployment, Service, Ingress, ConfigMaps...). Helm los empaqueta.

## Estructura
```
mychart/
  Chart.yaml      # Metadata
  values.yaml     # Configuración default
  templates/
    deployment.yaml
    service.yaml
    ingress.yaml
```

## Template example
```yaml
# templates/deployment.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: {{ .Values.app.name }}
spec:
  replicas: {{ .Values.replicaCount }}
  template:
    spec:
      containers:
      - name: app
        image: {{ .Values.image.repository }}:{{ .Values.image.tag }}
```

## Instalación
```bash
helm install my-app ./mychart --set replicaCount=3
```

Resumen: Helm = npm/apt para K8s. Package once, deploy anywhere con diferentes values.
