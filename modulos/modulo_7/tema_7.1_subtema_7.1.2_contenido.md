# MÓD 7: KUBERNETES  
## TEMA 7.1: ARQUITECTURA
### SUBTEMA 7.1.2: OBJETOS BÁSICOS (POD, SERVICE, INGRESS)

## Pod
Unidad mínima. 1+ containers compartiendo network/storage.

```yaml
apiVersion: v1
kind: Pod
metadata:
  name: nginx
spec:
  containers:
  - name: nginx
    image: nginx:1.21
    ports:
    - containerPort: 80
```

## Service
Expone Pods con IP estable (load balancer interno).

```yaml
apiVersion: v1
kind: Service
metadata:
  name: nginx-service
spec:
  selector:
    app: nginx
  ports:
  - port: 80
    targetPort: 80
```

## Ingress
HTTP/HTTPS routing externo. Un punto de entrada para múltiples servicios.

```yaml
apiVersion: networking.k8s.io/v1
kind: Ingress
metadata:
  name: app-ingress
spec:
  rules:
  - host: app.example.com
    http:
      paths:
      - path: /
        pathType: Prefix
        backend:
          service:
            name: nginx-service
            port:
              number: 80
```

Resumen: Pod = container(s). Service = load balancer interno. Ingress = reverse proxy HTTP externo.
