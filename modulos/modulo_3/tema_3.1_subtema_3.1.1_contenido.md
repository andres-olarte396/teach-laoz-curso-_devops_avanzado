# MÓDULO 3: CI/CD FUNDAMENTOS
## TEMA 3.1: INTEGRACIÓN CONTINUA
### SUBTEMA 3.1.1: PIPELINES DECLARATIVOS

**Tiempo estimado**: 60 minutos

## ¿Por qué importa?

Un pipeline declarativo (definido en YAML/código) es versionable, reproducible y auditable. Es la diferencia entre "el pipeline lo configuró Juan hace 3 años y nadie sabe cómo funciona" vs "está en Git, cualquiera puede verlo y modificarlo".

## Ejemplo GitHub Actions

```yaml
# .github/workflows/ci.yml
name: CI Pipeline
on: [push, pull_request]

jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - name: Setup Node
        uses: actions/setup-node@v3
        with:
          node-version: '18'
      - run: npm install
      - run: npm test
      - run: npm run lint
  
  build:
    needs: test
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v3
      - run: npm install
      - run: npm run build
      - name: Upload Artifact
        uses: actions/upload-artifact@v3
        with:
          name: dist
          path: dist/
```

##  Ventajas clave

1. **Versionado**: Cambios al pipeline = commits en Git.
2. **Revisión**: Los cambios al pipeline pasan por PR como cualquier código.
3. **Reproducibilidad**: Mismo código = mismo pipeline.
4. **Portabilidad**: Migrar de Jenkins a GitHub Actions = copiar YAML.

## Elementos esenciales

- **Triggers**: ¿Cuándo se ejecuta? (push, PR, schedule).
- **Jobs**: Unidades de trabajo paralelas.
- **Steps**: Comandos secuenciales dentro de un job.
- **Artifacts**: Outputs (ej. binarios compilados).
- **Caching**: npm_modules, Docker layers.

## Trampas

### ❌ Secretos hardcodeados
```yaml
# MAL
- run: aws s3 cp dist/ s3://bucket --access-key AKIA...
```

```yaml
# BIEN
- run: aws s3 cp dist/ s3://bucket
  env:
    AWS_ACCESS_KEY_ID: ${{ secrets.AWS_KEY }}
```

### ❌ Pipelines que tardan 2 horas
**Solución**: Paralelizar jobs, cachear dependencias.

## Resumen

Pipelines declarativos = Infrastructure as Code para CI/CD. Define tu pipeline en YAML, versiona en Git, automatiza todo.
