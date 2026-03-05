# MÓDULO 2: CONTROL DE VERSIONES AVANZADO
## TEMA 2.2: AUTOMATIZACIÓN EN GIT
### SUBTEMA 2.2.1: GIT HOOKS

**Tiempo estimado**: 45 minutos
**Nivel**: Intermedio

## ¿Por qué importa?

Los Git Hooks son scripts que se ejecutan automáticamente en momentos clave del flujo de Git (antes de commit, antes de push, etc.). Son tu primera línea de defensa contra código roto. Antes de que un commit llegue al servidor, puedes validar formato, ejecutar tests, verificar que no hay console.logs olvidados. Es automatización local que previene problemas antes de que escalen.

## Comprensión intuitiva

Es como el control de seguridad del aeropuerto. Antes de subir al avión (push al servidor), pasas por filtros automáticos: detector de metales (linter), revisión de equipaje (tests). Si algo está mal, no subes.

## Implementación práctica

### Pre-commit Hook

```bash
# .git/hooks/pre-commit
#!/bin/sh
npm run lint
if [ $? -ne 0 ]; then
    echo "❌ Lint failed. Fix errors before committing."
    exit 1
fi
```

### Pre-push Hook

```bash
# .git/hooks/pre-push
#!/bin/sh
npm test
if [ $? -ne 0 ]; then
    echo "❌ Tests failed. Fix before pushing."
    exit 1
fi
```

### Usando Husky (Herramienta moderna)

```bash
npm install --save-dev husky
npx husky install
npx husky add .husky/pre-commit "npm run lint"
npx husky add .husky/pre-push "npm test"
```

## Trampas comunes

### ❌ Hooks demasiado lentos
Hook de pre-commit que tarda 5 minutos.
**Solución**: Solo validar archivos staged (git diff --staged).

### ❌ Hooks que se pueden bypassear fácilmente
**Problema**: `git commit --no-verify` salta todos los hooks.
**Solución**: También valida en CI. Hooks locales son conveniencia, no seguridad.

## Resumen

Git Hooks: automatización local que acelera feedback y previene código roto antes de compartir.
