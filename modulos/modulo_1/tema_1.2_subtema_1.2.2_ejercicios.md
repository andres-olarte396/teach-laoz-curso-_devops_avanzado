# BANCO DE EJERCICIOS: MÓDULO 1 - SUBTEMA 1.2.2
## ANTI-PATRONES COMUNES

### EJERCICIO 1: Detectando al Héroe
**Dificultad**: ⭐ Básico
**Tipo**: Diagnóstico
**Objetivo**: Identificar el anti-patrón "The Brent Effect" (referencia a The Phoenix Project).

**Enunciado**:
En la empresa, cada vez que hay un despliegue crítico, todos dicen: "Esperemos a que llegue Carlos, él es el único que sabe cómo reiniciar el clúster si falla". Carlos nunca toma vacaciones y siempre está cansado.
1. ¿Qué anti-patrón es este?
2. ¿Cuál es el riesgo para la empresa (Bus Factor)?
3. ¿Cuál es la solución inmediata?

**Solución Esperada**:
1. **El Héroe (Hero Culture)**.
2. **Riesgo**: Si Carlos se va, se enferma o lo atropella un autobús (Bus Factor = 1), la empresa se detiene.
3. **Solución**: Pair Programming forzado. La próxima vez, Carlos NO toca el teclado. Él guía a otra persona para que lo haga, y esa persona documenta el proceso.

---

### EJERCICIO 2: DevOps Fake
**Dificultad**: ⭐⭐ Intermedio
**Tipo**: Debate
**Objetivo**: Desmontar falsas implementaciones.

**Enunciado**:
El CTO anuncia: "¡Ya somos DevOps! Hemos despedido al equipo de SysAdmins y ahora los desarrolladores tienen acceso root a los servidores de producción".
¿Qué anti-patrón es este y qué desastre es inminente?

**Solución**:
- **Anti-patrón**: **DevOps sin Ops** (o NoOps ingenuo).
- **Desastre**: Los desarrolladores, sin experiencia en redes, seguridad o gestión de sistemas, probablemente dejarán puertos abiertos, borrarán datos sin backup o configurarán mal el escalado. DevOps requiere *más* colaboración con Ops, no su eliminación.

---

### EJERCICIO 3: Cargo Cult (Copiar sin entender)
**Dificultad**: ⭐⭐ Intermedio
**Tipo**: Análisis
**Objetivo**: Entender el contexto.

**Enunciado**:
Una startup de 5 personas decide implementar Kubernetes, Service Mesh (Istio) y Chaos Engineering porque "así lo hace Google". Pasan 6 meses configurando la infraestructura y 0 meses lanzando su producto.
¿Por qué fallaron?

**Solución**:
Cayeron en el error de **Copiar a los Gigantes** sin tener sus problemas. Google usa K8s porque tiene millones de contenedores. Una startup necesita velocidad. La complejidad de las herramientas mató su agilidad. Debieron usar un PaaS simple (Heroku/Vercel) al inicio.
