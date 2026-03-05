# MÓDULO 1: INTRODUCCIÓN A DEVOPS
## TEMA 1.1: FUNDAMENTOS DEL MOVIMIENTO
### SUBTEMA 1.1.1: HISTORIA Y "THE WALL OF CONFUSION"

**Tiempo estimado**: 45 minutos
**Nivel**: Básico
**Prerrequisitos**: Ninguno

## ¿Por qué importa este concepto?

DevOps no nació porque alguien quiso vender más herramientas. Nació del dolor. Del dolor de los desarrolladores (Devs) que querían lanzar nuevas features rápido, y del dolor de los operadores (Ops) que querían estabilidad y odiaban los cambios que rompían los servidores. Entender este conflicto histórico, conocido como "The Wall of Confusion" (El Muro de la Confusión), es vital para no repetir los errores del pasado. Si no entiendes el *por qué*, las herramientas (Docker, Kubernetes) no te salvarán.

## Comprensión intuitiva

Imagina una fábrica de coches:
- **Devs**: Son los diseñadores creativos. Quieren inventar coches voladores, cambiar el motor cada semana y probar cosas locas. Su métrica de éxito es la **innovación** y la **velocidad**.
- **Ops**: Son los encargados de la línea de ensamblaje y seguridad. Quieren que el coche no explote. Odian los cambios porque cada cambio es un riesgo de que la línea se pare. Su métrica de éxito es la **estabilidad** (uptime).

Entre ellos hay un muro de ladrillo. Los Devs tiran sus diseños por encima del muro y se van a celebrar. Los Ops reciben esos diseños, intentan ensamblarlos, fallan, y culpan a los Devs. Los Devs dicen "en mi máquina funcionaba". Ops dice "tu código es basura".

DevOps es la demolición de ese muro.

## Definición formal

> **The Wall of Confusion**: Es la barrera organizacional y cultural que separa a los equipos de Desarrollo y Operaciones, causada por incentivos contrapuestos (Cambio vs. Estabilidad).
> **DevOps**: Es la unión de personas, procesos y productos para permitir la entrega continua de valor a los usuarios finales. No es un rol, es una cultura.

### La Historia Breve
1.  **2007-2008**: Patrick Debois (un admin frustrado) intenta aplicar metodologías Ágiles a la infraestructura.
2.  **2009**: Conferencia Velocity. John Allspaw y Paul Hammond de Flickr dan la charla legendaria: *"10+ Deploys per Day: Dev and Ops Cooperation at Flickr"*. El mundo explota.
3.  **2009**: Patrick Debois organiza el primer **DevOpsDays** en Gante, Bélgica. Nace el término.

## Implementación práctica: Identificando el Muro

¿Cómo sabes si tu organización tiene un "Muro de la Confusión"? Busca estos síntomas:

1.  **Ticket-Driven Development**: Para pedir una base de datos, un Dev tiene que abrir un ticket a Ops y esperar 2 semanas.
2.  **"Works on my machine"**: El código falla en producción y la respuesta de Dev es "no es mi culpa".
3.  **War Rooms**: Cada despliegue requiere una llamada de 5 horas con 20 personas estresadas comiendo pizza fría a las 3 AM.
4.  **Blame Culture**: Cuando algo se rompe, la pregunta es "¿Quién fue?" en lugar de "¿Qué falló en el proceso?".

## Trampas y Errores Comunes

### ❌ Error: Contratar un "Ingeniero DevOps" para arreglar la cultura
Crear un "Equipo DevOps" que se sienta entre Dev y Ops a menudo solo crea **dos muros** en lugar de uno. Ahora Dev tira código a DevOps, y DevOps lo tira a Ops.
**Solución**: DevOps debe ser una responsabilidad compartida, no un departamento aislado.

### ❌ Error: DevOps = Herramientas
"Instalamos Jenkins, así que ya hacemos DevOps".
**Realidad**: Puedes tener Jenkins y seguir teniendo silos. Las herramientas son amplificadores: si tu proceso es malo, la herramienta solo lo hará malo más rápido.

## Resumen del concepto

**En una frase**: DevOps resuelve el conflicto de intereses entre la velocidad de Dev y la estabilidad de Ops alineando a ambos hacia el objetivo de negocio.
**Cuándo usarlo**: Siempre. Es la base de todo lo que haremos en este curso.
**Siguiente paso**: Ahora que entendemos el problema, veremos la solución estructurada en el **Subtema 1.1.2: Principios CALMS y Lean**.
