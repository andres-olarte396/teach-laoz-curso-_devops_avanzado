# BANCO DE EJERCICIOS: MÓDULO 1 - SUBTEMA 1.2.1
## ROLES Y RESPONSABILIDADES

### EJERCICIO 1: Decodificando Ofertas de Trabajo
**Dificultad**: ⭐ Básico
**Tipo**: Análisis Crítico
**Objetivo**: Identificar Red Flags en descripciones de puesto.

**Enunciado**:
Analiza la siguiente oferta laboral y señala 2 "Red Flags" que indiquen que la empresa NO entiende DevOps:

> **Título**: Senior DevOps Ninja Rockstar
> **Responsabilidades**:
> - Gestionar manualmente los despliegues a producción cada viernes por la noche.
> - Ser el único responsable de la disponibilidad del sitio 24/7.
> - Escribir código Java para el backend cuando los desarrolladores estén ocupados.
> - Configurar impresoras de la oficina.

**Solución Esperada**:
1. **Despliegues manuales**: DevOps busca automatización.
2. **Único responsable 24/7**: Receta para burnout. La responsabilidad debe ser compartida o rotativa.
3. **Configurar impresoras**: Tareas de soporte técnico general (Helpdesk) mezcladas con ingeniería.

---

### EJERCICIO 2: SRE vs Platform Engineering
**Dificultad**: ⭐⭐ Intermedio
**Tipo**: Comparación
**Objetivo**: Distinguir entre las dos implementaciones modernas más comunes.

**Enunciado**:
Tienes dos problemas en tu empresa:
A. Los desarrolladores tardan 3 días en conseguir una base de datos de prueba.
B. El sitio web se cae cada vez que hay más de 10,000 usuarios concurrentes.

¿A quién asignas cada problema? (Platform Engineer o SRE).

**Solución**:
- **Problema A (Fricción en desarrollo)**: **Platform Engineer**. Debe construir un mecanismo de auto-servicio para que el dev obtenga su DB en minutos.
- **Problema B (Confiabilidad/Escalado)**: **SRE**. Debe analizar métricas, cuellos de botella y capacidad del sistema.

---

### EJERCICIO 3: El modelo de Spotify (Squads)
**Dificultad**: ⭐⭐ Intermedio
**Tipo**: Diseño Organizacional
**Objetivo**: Entender cómo integrar DevOps en equipos ágiles.

**Enunciado**:
En el modelo de Squads/Tribus, ¿dónde encaja el ingeniero DevOps?
a) En un departamento separado llamado "DevOps".
b) Incrustado dentro del Squad de producto (junto a Devs, QA, PO).
c) Como un consultor externo que viene una vez al mes.

**Solución**:
**b) Incrustado dentro del Squad**. Esto alinea los incentivos: el ingeniero DevOps es parte del equipo que entrega la funcionalidad y comparte el éxito o fracaso del producto.
