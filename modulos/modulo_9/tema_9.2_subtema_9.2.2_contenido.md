# MÓD 9
## TEMA 9.2
### SUBTEMA 9.2.2: POLÍTICAS DE RED (NETWORK POLICIES)

Zero Trust en K8s. Por default, todos los Pods pueden hablar con todos. Network Policies limitan.

## Default (INSECURE)
```
Frontend → Database (allowed)
Attacker Pod → Database (allowed!) ❌
```

## Con Network Policy
```yaml
apiVersion: networking.k8s.io/v1
kind: NetworkPolicy
metadata:
  name: db-policy
spec:
  podSelector:
    matchLabels:
      app: database
  ingress:
  - from:
    - podSelector:
        matchLabels:
          app: backend  # Solo backend puede hablar con DB
```

## Egress control
```yaml
egress:
- to:
  - podSelector:
      matchLabels:
        app: api
  ports:
  - port: 443  # Solo HTTPS externo
```

Resumen: Network Policies = firewall L3/L4 en K8s. Deny by default, allow explícito. Zero Trust.
