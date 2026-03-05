# BANCO DE EJERCICIOS: MÓDULO 1 - SUBTEMA 1.1.2
## PRINCIPIOS CALMS Y LEAN

### EJERCICIO 1: Auditoría CALMS
**Dificultad**: ⭐ Básico
**Tipo**: Clasificación
**Objetivo**: Identificar qué pilar de CALMS se está violando.

**Enunciado**:
Clasifica los siguientes escenarios con la letra de CALMS que falta (C, A, L, M, S):
1. El equipo hace deploys manuales conectándose por SSH a cada servidor.
2. Cuando el sitio se cae, el jefe grita "¿Quién rompió el build?" y amenaza con despidos.
3. Nadie sabe cuántos usuarios están usando la nueva funcionalidad lanzada ayer.
4. El equipo de seguridad encontró una vulnerabilidad crítica pero no se lo dijo a los desarrolladores para "no distraerlos".
5. Se trabaja en ramas de Git que duran 4 meses antes de integrarse (Merge Hell).

**Solución Esperada**:
1. **A** (Falta Automatización).
2. **C** (Falta Cultura - Blameless).
3. **M** (Falta Medición).
4. **S** (Falta Sharing/Transparencia).
5. **L** (Falta Lean - Lotes grandes).

---

### EJERCICIO 2: Reduciendo el Batch Size (Lean)
**Dificultad**: ⭐⭐ Intermedio
**Tipo**: Cálculo de Riesgo
**Objetivo**: Entender matemáticamente por qué los lotes pequeños son mejores.

**Enunciado**:
Tienes dos opciones para desplegar 10 nuevas funcionalidades:
- **Opción A**: Desplegar las 10 juntas el viernes a las 5 PM. Probabilidad de fallo por funcionalidad: 10%.
- **Opción B**: Desplegar 1 funcionalidad cada mañana durante 2 semanas.

Si despliegas las 10 juntas, ¿cuál es la probabilidad de que el despliegue contenga AL MENOS un error? (Asume independencia).
¿Por qué la Opción B es más segura para la estabilidad del sistema, incluso si la probabilidad de fallo es la misma?

**Solución**:
- Probabilidad de éxito de 1 funcionalidad = 0.9
- Probabilidad de éxito de 10 juntas = 0.9 ^ 10 ≈ 0.348 (34.8%)
- **Probabilidad de fallo del lote grande**: 1 - 0.348 = **65.2%**.
- **Análisis**: Es muy probable (65%) que el despliegue grande falle. En la Opción B, si falla una, solo reviertes esa pequeña parte y el sistema sigue funcionando. En la Opción A, tienes que revertir todo (las 10 funciones) o arreglarlo en caliente bajo presión.

---

### EJERCICIO 3: Métricas Reales vs Vanidad
**Dificultad**: ⭐ Básico
**Tipo**: Selección
**Objetivo**: Elegir KPIs útiles.

**Enunciado**:
Eres el CTO. Quieres saber si tu equipo DevOps está mejorando. Elige las 2 métricas que realmente importan:
a) Número de tickets de Jira cerrados.
b) Lead Time for Changes (Tiempo desde el commit hasta producción).
c) Porcentaje de cobertura de pruebas unitarias.
d) Change Failure Rate (Porcentaje de deploys que requieren hotfix).
e) Horas extra trabajadas.

**Solución**:
**b) Lead Time** (Velocidad) y **d) Change Failure Rate** (Estabilidad). Son métricas DORA (DevOps Research and Assessment) estándar. La cobertura (c) es buena pero técnica, no de negocio. (a) y (e) son métricas de vanidad o actividad, no de resultado.
