# MÓDULO 2: CONTROL DE VERSIONES AVANZADO
## TEMA 2.1: ESTRATEGIAS DE RAMIFICACIÓN
### SUBTEMA 2.1.2: MONOREPOS VS POLYREPOS

**Tiempo estimado**: 60 minutos
**Nivel**: Intermedio
**Prerrequisitos**: Git básico

## ¿Por qué importa este concepto?

Monorepo vs Polyrepo no es solo una decisión técnica, es una decisión arquitectónica que afecta cómo tu organización escala. Google tiene TODO su código en un solo repositorio gigante (monorepo). Amazon tiene miles de repositorios pequeños (polyrepo). Ambos son exitosos. La pregunta no es "cuál es mejor", sino "cuál se adapta a tu contexto".

## Comprensión intuitiva

**Monorepo**: Es como vivir en un edificio de apartamentos. Todos comparten la misma dirección, mismas reglas, mismo portero. Si actualizas la tubería, todos se benefician. Pero si alguien causa un incendio, afecta a todos.

**Polyrepo**: Es como un barrio de casas individuales. Cada casa (proyecto) tiene su propio terreno, sus propias reglas. Si una se incendia, las demás están a salvo. Pero si necesitas actualizar el cableado eléctrico de todas, tienes que ir casa por casa.

## Definición formal

> **Monorepo**: Un repositorio único que contiene múltiples proyectos/servicios relacionados. Ejemplo: Google, Facebook.

> **Polyrepo**: Múltiples repositorios, uno por proyecto/servicio. Ejemplo: AWS, Netflix (parcialmente).

### Comparación

| Aspecto | Monorepo | Polyrepo |
|---------|----------|----------|
| **Refactoring cross-project** | Fácil (atomic commits) | Difícil (múltiples PRs sincronizados) |
| **Gestión de dependencias** | Centralizada | Distribuida |
| **CI/CD** | Complejo (build inteligente) | Simple (un repo = un pipeline) |
| **Visibilidad del código** | Total | Fragmentada |
| **Tooling** | Requiere herramientas especiales (Bazel, Buck) | Herramientas estándar (Git, npm) |

## Implementación práctica

### Estructura Monorepo

```
monorepo/
├── services/
│   ├── api/
│   ├── web/
│   └── mobile/
├── libs/
│   ├── auth/
│   └── utils/
├── tools/
│   └── scripts/
└── BUILD (Bazel/Nx config)
```

### Polyrepo

```
org/
├── api-repo/
├── web-repo/
├── mobile-repo/
├── auth-lib-repo/
└── utils-lib-repo/
```

### Caso: Actualización de dependencia

**Monorepo:**
```bash
# Un solo commit actualiza TODO
sed -i 's/lodash@4.0/lodash@5.0/g' package.json
git commit -m "upgrade: lodash 5.0 across all services"
```

**Polyrepo:**
```bash
# Actualizar en 5 repos diferentes, 5 PRs, tests independientes
# Repo 1
cd api-repo && npm update lodash && git commit...
# Repo 2
cd web-repo && npm update lodash && git commit...
# ...
```

## Trampas y Errores Comunes

### ❌ Error: Monorepo sin herramientas avanzadas
Usar un monorepo gigante con solo Git y npm.
**Problema**: Los builds tardan horas porque rebuilds todo cada vez.
**Solución**: Nx, Turborepo, Bazel (detectan qué cambió y solo rebuilds eso).

### ❌ Error: Polyrepo con dependencias acopladas
Tener 10 repos que SIEMPRE se despliegan juntos.
**Señal**: Si no puedes deployar un servicio sin deployar otros 5, deberían estar en un monorepo.

## Resumen del concepto

**Monorepo**: Maximiza la colaboración y consistencia a costa de complejidad en tooling.
**Polyrepo**: Maximiza la autonomía y aislamiento a costa de duplicación y sincronización.

**Siguiente paso**: Ahora que organizaste tus repos, automatiza validaciones en **Subtema 2.2.1: Git Hooks**.
