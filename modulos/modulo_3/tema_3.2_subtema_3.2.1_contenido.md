# MÓDULO 3: CI/CD FUNDAMENTOS
## TEMA 3.2: ENTREGA CONTINUA
### SUBTEMA 3.2.1: ARTEFACTOS REPRODUCIBLES

Build Once, Deploy Everywhere. Si compilas en cada ambiente (dev, staging, prod), introduces variabilidad. Un artefacto inmutable (Docker image, .jar, .zip) garantiza que lo que probaste es EXACTAMENTE lo que se despliega.

## Principio
```
Code + Dependencies = Artifact (Immutable)
Artifact + Config (por ambiente) = Deployment
```

## Ejemplo Docker
```dockerfile
FROM node:18 AS builder
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

FROM node:18-alpine
COPY --from=builder /app/dist /app
CMD ["node", "/app/server.js"]
```

## Versionado
```bash
docker build -t myapp:$(git rev-parse --short HEAD) .
```

Resumen: Build once, deploy many. Artefactos inmutables eliminan "works on my machine".
