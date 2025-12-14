# EJERCICIO: Implementa pre-commit
Configura Husky para rechazar commits con `console.log`.

# SOLUCIÓN:
```bash
npx husky add .husky/pre-commit "grep -r 'console.log' src/ && exit 1 || exit 0"
```
