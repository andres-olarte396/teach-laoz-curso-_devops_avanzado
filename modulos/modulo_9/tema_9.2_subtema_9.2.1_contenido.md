# MÓD 9
## TEMA 9.2: SEGURIDAD EN RUNTIME
### SUBTEMA 9.2.1: SEGURIDAD EN CONTENEDORES

Containers no son VMs. Comparten kernel. Necesitan hardening.

## Distroless Images
Imagen sin shell, package manager. Solo runtime + app.

```dockerfile
FROM gcr.io/distroless/nodejs18
COPY app /app
CMD ["/app/server.js"]
# No shell = no RCE via shell injection
```

## No root
```dockerfile
USER 1000:1000  # Non-root user
```

## Read-only filesystem
```yaml
# K8s
securityContext:
  readOnlyRootFilesystem: true
  runAsNonRoot: true
```

## Image scanning
```bash
trivy image myapp:latest --severity HIGH,CRITICAL
# Escanea vulnerabilidades en layers
```

Resumen: Distroless + non-root + readonly FS + scan con Trivy. Reduce superficie de ataque.
