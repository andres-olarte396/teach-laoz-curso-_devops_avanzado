# MÓD 6: DOCKER
## TEMA 6.2: BEST PRACTICES
### SUBTEMA 6.2.1: MULTI-STAGE BUILDS

Reduce tamaño de imagen drásticamente. Build en una etapa, ejecuta en otra (sin build tools).

## Sin multi-stage (MALO)
```dockerfile
FROM node:18
WORKDIR /app
COPY package*.json ./
RUN npm install  # Incluye devDependencies
COPY . .
RUN npm run build
CMD ["npm", "start"]
# Imagen final: 1.2 GB (incluye node_modules completo + build tools)
```

## Con multi-stage (BUENO)
```dockerfile
# Stage 1: Build
FROM node:18 AS builder
WORKDIR /app
COPY package*.json ./
RUN npm ci
COPY . .
RUN npm run build

# Stage 2: Production
FROM node:18-alpine
WORKDIR /app
COPY --from=builder /app/dist ./dist
COPY package*.json ./
RUN npm ci --production  # Solo production deps
CMD ["node", "dist/server.js"]
# Imagen final: 150 MB
```

Resumen: Multi-stage = build artifacts en stage 1, copia solo lo necesario a stage 2. Imagen final 90% más pequeña.
