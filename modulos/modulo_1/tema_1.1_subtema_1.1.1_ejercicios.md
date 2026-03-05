# BANCO DE EJERCICIOS: MÓDULO 1 - SUBTEMA 1.1.1
## HISTORIA Y "THE WALL OF CONFUSION"

### EJERCICIO 1: Diagnóstico de Silos
**Dificultad**: ⭐ Básico
**Tipo**: Análisis de Caso
**Objetivo**: Identificar síntomas del "Muro de la Confusión".

**Enunciado**:
Lee el siguiente escenario y lista 3 evidencias de que existe un "Muro de la Confusión":

> "En la empresa TechCorp, el equipo de desarrollo terminó la feature de 'Pagos con QR' el viernes. Enviaron el código compilado (un .jar) por correo al equipo de Operaciones con un documento Word de instrucciones de despliegue. El lunes, Operaciones intentó desplegarlo pero falló porque la versión de Java en producción era antigua. Operaciones revirtió el cambio y mandó un email a Dev diciendo 'El artefacto está corrupto'. Dev respondió 'En mi local funciona, actualicen sus servidores'."

**Solución Esperada**:
1. **Lanzamiento por encima del muro**: Envío de código por correo/manual sin colaboración.
2. **Inconsistencia de entornos**: Diferencia de versiones Java (Dev vs Prod).
3. **Cultura de culpa**: "El artefacto está corrupto" vs "En mi local funciona".

---

### EJERCICIO 2: Incentivos Contrapuestos
**Dificultad**: ⭐⭐ Intermedio
**Tipo**: Reflexión
**Objetivo**: Entender la raíz económica del conflicto.

**Enunciado**:
Si el bono anual del Director de Desarrollo se basa en "Cantidad de nuevas features lanzadas" y el bono del Director de Operaciones se basa en "Disponibilidad del sistema (Uptime)", ¿qué comportamiento tóxico es inevitable?

**Solución**:
El Director de Ops bloqueará cualquier lanzamiento que tenga el mínimo riesgo, ralentizando a Dev. El Director de Dev presionará para lanzar código sin probar lo suficiente para cumplir su cuota. El resultado es guerra política y parálisis.

---

### EJERCICIO 3: El origen
**Dificultad**: ⭐ Básico
**Tipo**: Historia
**Objetivo**: Conocer los hitos fundacionales.

**Enunciado**:
¿Qué charla de 2009 se considera el punto de inflexión que demostró que Dev y Ops podían trabajar juntos a alta velocidad?
a) "DevOps: The Big Picture" por Gene Kim.
b) "10+ Deploys per Day" por Allspaw y Hammond (Flickr).
c) "Continuous Delivery" por Jez Humble.

**Solución**:
b) "10+ Deploys per Day". Fue revolucionaria porque en esa época desplegar una vez cada 6 meses era la norma.
