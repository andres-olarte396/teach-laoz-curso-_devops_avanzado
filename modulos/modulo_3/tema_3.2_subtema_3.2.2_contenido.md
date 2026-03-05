# MÓDULO 3: CI/CD FUNDAMENTOS
## TEMA 3.2: ENTREGA CONTINUA
### SUBTEMA 3.2.2: ESTRATEGIAS DE VERSIONADO (SEMVER)

SemVer es un contrato: MAJOR.MINOR.PATCH

- **MAJOR**: Breaking changes (1.x → 2.0)
- **MINOR**: Nueva funcionalidad compatible (1.2 → 1.3)
- **PATCH**: Bugfixes (1.2.3 → 1.2.4)

## Ejemplo
```
v1.2.3 → v1.2.4  (Fix bug)
v1.2.4 → v1.3.0  (Nueva feature)
v1.3.0 → v2.0.0  (Breaking change)
```

## Automatización con Conventional Commits
```bash
git commit -m "fix: resolver leak"      # → PATCH
git commit -m "feat: add OAuth"         # → MINOR  
git commit -m "feat!: rename API"       # → MAJOR
```

## Herramientas
- semantic-release
- standard-version

Resumen: SemVer comunica compatibilidad. Automatiza con conventional commits.
