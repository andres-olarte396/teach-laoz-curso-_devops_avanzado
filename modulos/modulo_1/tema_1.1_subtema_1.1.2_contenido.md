# MÓDULO 1: INTRODUCCIÓN A DEVOPS
## TEMA 1.1: FUNDAMENTOS DEL MOVIMIENTO
### SUBTEMA 1.1.2: PRINCIPIOS CALMS Y LEAN

**Tiempo estimado**: 60 minutos
**Nivel**: Básico
**Prerrequisitos**: Subtema 1.1.1

## ¿Por qué importa este concepto?

Si DevOps es una cultura, ¿cómo se implementa? No puedes simplemente decir "seamos DevOps". Necesitas un marco de trabajo. CALMS es ese marco. Es el acrónimo que define los 5 pilares esenciales para transformar una organización. Si fallas en uno (ej. automatizas mucho pero no compartes conocimiento), tu transformación fallará. Además, DevOps hereda mucho de **Lean Manufacturing** (sí, de Toyota). Entender cómo eliminar "desperdicio" (Muda) es clave para acelerar tu pipeline.

## Comprensión intuitiva

Imagina que quieres mejorar tu salud física (DevOps):
- **C**ulture: Cambias tu mentalidad (no más comida chatarra).
- **A**utomation: Compras una licuadora para hacer batidos rápido (herramientas).
- **L**ean: Dejas de comprar comida que se pudre en la nevera (eliminar desperdicio).
- **M**easurement: Te pesas y mides tu grasa corporal semanalmente (métricas).
- **S**haring: Entrenas con un amigo y comparten recetas (colaboración).

Si solo compras la licuadora (Automation) pero sigues comiendo pizza (Culture), no estarás sano.

## Definición formal

> **CALMS**: Acrónimo propuesto por Jez Humble y Damon Edwards.
> - **C**ulture: Responsabilidad compartida, sin culpas.
> - **A**utomation: Eliminar trabajo manual repetitivo (Toil).
> - **L**ean: Flujo de valor, lotes pequeños, mejora continua.
> - **M**easurement: Datos sobre opiniones. MTTR, MTTD, Lead Time.
> - **S**haring: Visibilidad, transparencia y aprendizaje colectivo.

> **Lean**: Filosofía de gestión enfocada en maximizar el valor para el cliente minimizando el desperdicio. En software, "desperdicio" es código no desplegado, esperas, defectos o funciones que nadie usa.

## Implementación práctica: Aplicando CALMS

### 1. Culture (Cultura)
- **Síntoma**: "Yo soy Dev, mi trabajo termina cuando hago commit".
- **Acción CALMS**: "You build it, you run it". Los desarrolladores llevan el pager (on-call) de sus propios servicios.

### 2. Automation (Automatización)
- **Síntoma**: Desplegar requiere copiar archivos manualmente por FTP.
- **Acción CALMS**: Crear un script o pipeline que haga el despliegue con un solo click.
- **Regla**: Si lo tienes que hacer más de 2 veces, automatízalo.

### 3. Lean (Esbeltez)
- **Síntoma**: Hacemos despliegues gigantes (Big Bang) cada 3 meses.
- **Acción CALMS**: Reducir el tamaño del lote (Batch Size). Desplegar cambios pequeños 3 veces al día.
- **Por qué**: Si despliegas 1000 líneas y falla, es difícil saber dónde está el error. Si despliegas 10 líneas y falla, el error es obvio.

### 4. Measurement (Medición)
- **Síntoma**: "Creo que el sistema va lento".
- **Acción CALMS**: Instalar Prometheus/Grafana. "La latencia del endpoint /login subió de 200ms a 800ms tras el último deploy".

### 5. Sharing (Compartir)
- **Síntoma**: Solo "Juan el de Ops" sabe cómo reiniciar la base de datos.
- **Acción CALMS**: Documentación en el repo (README), wikis, y sesiones de "Brown Bag" donde Juan enseña al equipo.

## Trampas y Errores Comunes

### ❌ Error: Automatizar el caos
Automatizar un proceso ineficiente solo magnifica la ineficiencia. Antes de automatizar (A), aplica Lean (L) para optimizar el proceso.

### ❌ Error: Métricas de vanidad
Medir "Líneas de código escritas" o "Número de commits".
**Solución**: Mide resultados de negocio (Tiempo de recuperación, Tasa de éxito de cambios).

## Resumen del concepto

**En una frase**: CALMS es tu checklist para asegurar que no estás haciendo solo "automatización glorificada", sino una verdadera transformación DevOps.
**Cuándo usarlo**: Cada vez que tomes una decisión técnica o de proceso. Pregúntate: "¿Esto mejora la cultura? ¿Es Lean? ¿Podemos medirlo?".
**Siguiente paso**: Ya tenemos la teoría. En el **Tema 1.2**, veremos quién ejecuta esto: **Roles y Responsabilidades**.
