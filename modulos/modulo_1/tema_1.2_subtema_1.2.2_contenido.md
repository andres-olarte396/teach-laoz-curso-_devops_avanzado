# MÓDULO 1: INTRODUCCIÓN A DEVOPS
## TEMA 1.2: ROLES Y REALIDAD
### SUBTEMA 1.2.2: ANTI-PATRONES COMUNES

**Tiempo estimado**: 45 minutos
**Nivel**: Básico
**Prerrequisitos**: Subtema 1.2.1

## ¿Por qué importa este concepto?

Aprender de los errores ajenos es más barato que cometerlos uno mismo. En la adopción de DevOps, muchas empresas caen en las mismas trampas una y otra vez. Estos "Anti-patrones" parecen buenas ideas al principio ("¡Vamos a crear un equipo de expertos!"), pero terminan destruyendo la cultura y la velocidad. Identificarlos a tiempo te salvará de meses de frustración.

## Comprensión intuitiva

Imagina que quieres que tu familia coma más sano (Objetivo DevOps):
- **Anti-patrón 1 (Silo)**: Contratas a un chef (Equipo DevOps). La familia sigue comiendo mal, pero el chef cocina una ensalada perfecta que nadie se come.
- **Anti-patrón 2 (Herramientas)**: Compras la olla más cara del mundo (Kubernetes) pero sigues cocinando fritos.
- **Anti-patrón 3 (Héroe)**: Solo tú sabes cocinar. Si te enfermas, nadie come.

## Definición formal

> **Anti-patrón**: Una solución aparente a un problema recurrente que, en realidad, es contraproducente.

### Los 5 Jinetes del Apocalipsis DevOps

1.  **El Silo DevOps**: Crear un departamento separado llamado "DevOps" que actúa como intermediario.
    *   *Resultado*: Más burocracia. Dev -> DevOps -> Ops.
2.  **DevOps como Título (The Rebrand)**: Tomar a los SysAdmins, cambiarles el título a "DevOps Engineers" y no cambiar nada más.
    *   *Resultado*: Las mismas prácticas viejas con salarios más altos.
3.  **DevOps = Herramientas**: Creer que por usar Docker y Jenkins ya eres DevOps.
    *   *Resultado*: "Caos automatizado".
4.  **El Héroe (The Brent Effect)**: Una sola persona que sabe cómo funciona todo.
    *   *Resultado*: Cuello de botella y riesgo de bus factor = 1.
5.  **DevOps sin Ops**: Los desarrolladores asumen todo el control sin tener experiencia en operaciones.
    *   *Resultado*: Servidores inestables, seguridad nula y bases de datos borradas por error.

## Implementación práctica: Cómo evitar los Anti-patrones

### Evitando el Silo
- **Acción**: Incrusta a los ingenieros de operaciones/plataforma DENTRO de los equipos de producto.
- **Regla**: Si tienes que abrir un ticket para hablar con "DevOps", tienes un silo.

### Evitando el Héroe
- **Acción**: Rotación de tareas. Nadie puede ser el único dueño de un sistema.
- **Regla**: Documentación obligatoria. Si no está documentado, no existe.

### Evitando "DevOps sin Ops"
- **Acción**: Establece "Guardrails" (barandillas). Los desarrolladores pueden desplegar, pero la plataforma les impide borrar la base de datos de producción accidentalmente.

## Trampas y Errores Comunes

### ❌ Error: "Vamos a estandarizar todo primero"
Intentar que todos los equipos usen la misma herramienta antes de empezar.
**Solución**: Empieza pequeño. Deja que un equipo piloto pruebe y demuestre el éxito.

### ❌ Error: Copiar a Netflix/Google
"Netflix hace Chaos Monkey, así que nosotros también".
**Realidad**: Netflix tiene miles de ingenieros de élite. Tú tienes 5. Copiar sus prácticas sin tener su madurez es suicida.

## Resumen del concepto

**En una frase**: DevOps no es algo que compras ni un departamento que creas; es la forma en que trabajas.
**Cuándo usarlo**: Cuando veas que la "transformación digital" se está convirtiendo en burocracia digital.
**Siguiente paso**: Hemos terminado el Módulo 1. En el **Módulo 2**, dejaremos la teoría y nos ensuciaremos las manos con **Git Avanzado**.
