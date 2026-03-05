# MÓD 6: DOCKER
## TEMA 6.1: INTERNALS  
### SUBTEMA 6.1.2: UNION FILE SYSTEM

Las imágenes Docker son capas. Copy-on-Write permite compartir datos y ahorrar espacio.

## Layers
```dockerfile
FROM ubuntu:20.04        # Layer 1: Base OS
RUN apt update           # Layer 2: Package metadata
RUN apt install -y nginx # Layer 3: Nginx binaries
COPY app /app            # Layer 4: Tu código
```

Cada comando = nueva layer. Layers se cachean y reutilizan.

## Copy-on-Write
Si 10 containers usan misma imagen, comparten las layers base (readonly). Solo escriben en su propia capa writable (top layer).

## Optimización
```dockerfile
# MAL: 3 layers
RUN apt update
RUN apt install -y nginx
RUN apt install -y curl

# BIEN: 1 layer
RUN apt update && apt install -y nginx curl && rm -rf /var/lib/apt/lists/*
```

Resumen: Imágenes = stack de layers readonly. Containers añaden layer writable encima. Comparten layers base.
