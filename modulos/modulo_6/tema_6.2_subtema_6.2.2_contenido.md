# MÓD 6: DOCKER
## TEMA 6.2: BEST PRACTICES
### SUBTEMA 6.2.2: GESTIÓN DE SECRETOS EN BUILD

NUNCA hardcodees secretos en Dockerfile. Usan build args + secrets mount.

## MALO (Secreto en imagen)
```dockerfile
FROM node:18
RUN echo "API_KEY=abc123" > .env  # ❌ Queda en layer history
```

## MEJOR: Build Args (para build-time)
```dockerfile
ARG NPM_TOKEN
RUN echo "//registry.npmjs.org/:_authToken=${NPM_TOKEN}" > .npmrc && \
    npm install && \
    rm .npmrc  # Elimina del filesystem, pero sigue en layer history
```

## ÓPTIMO: BuildKit Secrets
```dockerfile
# syntax=docker/dockerfile:1
FROM node:18
RUN --mount=type=secret,id=npmtoken \
    echo "//registry.npmjs.org/:_authToken=$(cat /run/secrets/npmtoken)" > .npmrc && \
    npm install && \
    rm .npmrc
```

```bash
docker buildx build --secret id=npmtoken,src=token.txt .
# Secret NO queda en imagen final
```

## Runtime secrets
Usar env vars o secret management (Vault, AWS Secrets Manager).

Resumen: BuildKit secrets para build. Env vars o secret managers para runtime. Nunca hardcodear.
