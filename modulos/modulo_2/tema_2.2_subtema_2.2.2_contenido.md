# MÓDULO 2: CONTROL DE VERSIONES AVANZADO
## TEMA 2.2: AUTOMATIZACIÓN EN GIT
### SUBTEMA 2.2.2: POLÍTICAS DE PULL REQUEST

**Tiempo estimado**: 45 minutos
**Nivel**: Intermedio

## ¿Por qué importa?

Las Pull Requests (PR) son el punto de control de calidad del código antes de merge. Sin políticas claras, se convierten en rubber-stamping ("lo apruebo sin leer") o en batallas de ego. Las políticas correctas equilibran velocidad con calidad: revisiones obligatorias, CI pasando, sin merge de tu propio código.

## Políticas esenciales

1. **Require Review**: Al menos 1 aprobación de alguien externo al autor.
2. **Status Checks**: CI debe pasar (tests, linters).
3. **No Self-Merge**: El autor no puede aprobar su propio PR.
4. **Branch Protection**: `main` no acepta push directo, solo via PR.

## Implementación en GitHub

```yaml
# .github/branch-protection-rules.yml
required_approving_review_count: 2
require_code_owner_reviews: true
required_status_checks:
  - ci/tests
  - ci/lint
dismiss_stale_reviews: true
```

## Tamaño ideal de PR

**Regla de oro**: < 400 líneas cambiadas.
**Razón**: Estudios muestran que revisiones > 400 líneas tienen 90% menos efectividad.

## Resumen

Políticas de PR: barandillas que aseguran calidad sin frenar velocidad. Automatiza lo automatizable (tests), humanos revisan lo humano (lógica de negocio).
