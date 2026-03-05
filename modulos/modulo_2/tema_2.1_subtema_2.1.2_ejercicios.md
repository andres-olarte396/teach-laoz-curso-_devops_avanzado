# BANCO DE EJERCICIOS: MÓDULO 2 - SUBTEMA 2.1.2
## MONOREPOS VS POLYREPOS

### EJERCICIO 1: Diagnóstico
**Dificultad**: ⭐⭐ Intermedio
**Objetivo**: Identificar señales de que estás usando la arquitectura incorrecta.

**Enunciado**:
Tienes 8 microservicios en 8 repos separados (polyrepo). Observas:
- Cada cambio en la librería compartida de autenticación requiere abrir 8 PRs (uno por servicio).
- Nunca despliegas un servicio solo; siempre despliegas los 8 juntos.
- Pasas más tiempo sincronizando versiones que desarrollando features.

¿Qué estrategia deberías adoptar?

**Solución**: **Monorepo**. Las señales son claras: alto acoplamiento, cambios atómicos cross-repo frecuentes y despliegue sincronizado. Polyrepo está añadiendo fricción sin dar beneficios.

---

### EJERCICIO 2: Tooling para Monorepo
**Dificultad**: ⭐⭐⭐ Avanzado
**Objetivo**: Entender cómo escalar un monorepo.

**Enunciado**:
Tu monorepo tiene 50 proyectos. Un dev cambia 1 línea en `libs/utils`. Sin tooling especial, el CI tarda 3 horas rebuilding todo.
¿Qué herramienta resuelve esto y cómo funciona?

**Solución**: **Nx, Turborepo o Bazel**. Estas herramientas:
1. Crean un grafo de dependencias de los proyectos.
2. Detectan qué cambió (usando Git diff).
3. Solo rebuilds los proyectos afectados.
Ejemplo: Si `libs/utils` solo es usado por `services/api`, solo rebuild `api`, no los otros 49 proyectos.

---

### EJERCICIO 3: Polyrepo con librería compartida
**Dificultad**: ⭐⭐ Intermedio
**Objetivo**: Gestionar dependencias en polyrepo.

**Enunciado**:
Tienes una librería `@company/auth` publicada en npm privado. 10 servicios la usan. Descubres un bug crítico.
¿Cuál es el flujo para parchear y deployar?

**Solución**:
1. Fix en `auth-lib-repo` → Publish `@company/auth@1.2.3`.
2. Actualizar `package.json` de los 10 servicios (10 PRs).
3. Esperar CI/CD de cada uno.
4. Desplegar los 10 servicios.
Total: ~2-4 horas vs. Monorepo (1 commit, 1 deploy, 30 min).
