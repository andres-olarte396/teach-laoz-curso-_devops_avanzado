# MÓDULO 2: CONTROL DE VERSIONES AVANZADO
## TEMA 2.1: ESTRATEGIAS DE RAMIFICACIÓN
### SUBTEMA 2.1.1: GITFLOW VS TRUNK-BASED

**Tiempo estimado**: 60 minutos
**Nivel**: Intermedio
**Prerrequisitos**: Git básico (commit, push, pull, merge)

## ¿Por qué importa este concepto?

La forma en que organizas tus ramas de Git define tu velocidad de entrega. GitFlow fue el estándar durante años, pero hoy las empresas de alta velocidad (Google, Facebook) usan Trunk-Based Development. Elegir mal puede convertir tu repositorio en un laberinto de merge conflicts interminables o, peor, en un proceso donde los cambios tardan semanas en llegar a producción. Este concepto es la diferencia entre desplegar 10 veces al día vs 10 veces al año.

## Comprensión intuitiva

Imagina que estás construyendo una casa (tu software):

- **GitFlow**: Tienes una casa "master" (la oficial). Cada constructor trabaja en su propia casa modelo a escala (rama feature). Cuando terminan, intentan fusionar su modelo con la casa oficial. A veces las paredes no encajan porque otro constructor ya modificó el plano original.
  
- **Trunk-Based**: Todos trabajan en la MISMA casa real al mismo tiempo. Pero cada uno trabaja en una habitación diferente durante máximo 1 día. Como la integración es diaria, los conflictos son pequeños y se detectan rápido.

## Definición formal

> **GitFlow**: Modelo de ramificación propuesto por Vincent Driessen (2010). Define ramas de larga duración: `master`, `develop`, `feature/*`, `release/*`, `hotfix/*`.

> **Trunk-Based Development**: Modelo donde todos los desarrolladores integran su código directamente en `main`/`trunk` al menos una vez al día. Las ramas feature viven menos de 24 horas.

### Comparación Técnica

| Aspecto | GitFlow | Trunk-Based |
|---------|---------|-------------|
| **Ramas principales** | master + develop + múltiples auxiliares | Solo `main` |
| **Vida de feature branch** | Días o semanas | Horas (< 1 día) |
| **Merge Frequency** | Baja (al terminar feature) | Alta (múltiples por día) |
| **Mejor para** | Releases programados, equipos grandes y distribuidos | CI/CD ágil, equipos colocados |
| **Complejidad** | Alta | Baja |
| **Riesgo de Merge Hell** | Alto | Bajo |

## Implementación práctica

### Ejemplo GitFlow

```bash
# Crear rama feature desde develop
git checkout develop
git checkout -b feature/pago-tarjeta

# Trabajar por 3 semanas...
git add .
git commit -m "Implementación de pagos"

# Intentar merge a develop (probablemente con conflictos)
git checkout develop
git pull origin develop
git merge feature/pago-tarjeta
# CONFLICTOS! Alguien más modificó las mismas áreas
```

### Ejemplo Trunk-Based

```bash
# Siempre desde main actualizado
git checkout main
git pull origin main
git checkout -b short-lived/fix-button

# Trabajar por MÁXIMO 4 horas
git add .
git commit -m "fix: botón de pago alineado"

# Push y PR inmediato
git push origin short-lived/fix-button
# Crear Pull Request -> Revisión rápida -> Merge a main
```

### Feature Flags para Trunk-Based

¿Cómo haces una feature que toma 2 semanas en trunk-based? **Feature Flags**.

```javascript
// Código en main, pero inactivo
if (featureFlags.nuevoPago) {
    renderNuevoPago();
} else {
    renderPagoViejo(); // Código actual
}
```

Despliegas el código "apagado". Cuando está listo, activas el flag. Cero ramas largas.

## Trampas y Errores Comunes

### ❌ Error: GitFlow en un contexto de CI/CD moderno
Usar GitFlow cuando quieres hacer 10 deploys al día.
**Realidad**: GitFlow fue diseñado para software empaquetado (releases mensuales/anuales), no para SaaS con despliegue continuo.

### ❌ Error: Trunk-Based sin cobertura de tests
Integrar código cada hora sin tests automatizados.
**Consecuencia**: Rompes `main` constantemente. Trunk-Based REQUIERE CI robusto.

### ❌ Error: Ramas feature que viven 3 semanas
Llamarlo "Trunk-Based" pero tener ramas que duran un mes.
**Solución**: Si tu feature es grande, divídela en partes de 1 día usando feature flags o abstracción gradual.

## Resumen del concepto

**En una frase**: GitFlow gestiona complejidad mediante aislamiento (muchas ramas); Trunk-Based la evita mediante integración frecuente.

**Cuándo usar GitFlow**: Software con releases programados fijos (ej. apps móviles esperando aprobación de tienda).

**Cuándo usar Trunk-Based**: Aplicaciones web con despliegue continuo y cultura de testing sólida.

**Siguiente paso**: Ahora que elegiste tu estrategia, veremos arquitecturas de repositorio en **Subtema 2.1.2: Monorepos vs Polyrepos**.
