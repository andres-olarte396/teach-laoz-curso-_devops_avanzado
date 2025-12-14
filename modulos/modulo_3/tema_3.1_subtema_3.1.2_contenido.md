# MÓDULO 3: CI/CD FUNDAMENTOS
## TEMA 3.1: INTEGRACIÓN CONTINUA
### SUBTEMA 3.1.2: ANÁLISIS ESTÁTICO Y LINTERS

**Tiempo estimado**: 45 minutos

## ¿Por qué importa?

Los linters son tu segundo cerebro. Detectan bugs antes de ejecutar el código: variables no usadas, imports faltantes, patrones anti-seguros. Son baratos (segundos) vs tests (minutos) y encuentran el 40% de los bugs triviales.

## Herramientas comunes

- **JavaScript/TypeScript**: ESLint, Prettier
- **Python**: Pylint, Black, Mypy
- **Go**: golint, staticcheck
- **Java**: Checkstyle, SpotBugs

## Configuración ejemplo

```json
// .eslintrc.json
{
  "extends": "airbnb",
  "rules": {
    "no-console": "error",
    "no-unused-vars": "error",
    "semi": ["error", "always"]
  }
}
```

## En CI/CD

```yaml
- name: Run Linter
  run: npm run lint
  # Si falla, bloquea el merge
```

## Resumen

Linters: calidad automática. 0 excusas para código inconsistente. Configura una vez, aplica siempre.
