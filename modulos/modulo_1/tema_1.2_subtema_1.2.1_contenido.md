# MÓDULO 1: INTRODUCCIÓN A DEVOPS
## TEMA 1.2: ROLES Y REALIDAD
### SUBTEMA 1.2.1: ROLES Y RESPONSABILIDADES

**Tiempo estimado**: 45 minutos
**Nivel**: Básico
**Prerrequisitos**: Tema 1.1

## ¿Por qué importa este concepto?

Si buscas "DevOps Engineer" en LinkedIn, encontrarás miles de ofertas. Pero si preguntas a los expertos, te dirán que "DevOps Engineer" es un título que no debería existir. ¿Confuso? Sí. La industria ha mercantilizado el término. Entender qué se espera realmente de ti (y qué NO deberías aceptar) es crucial para tu carrera. ¿Eres un SysAdmin que sabe usar Git? ¿Eres un Developer que sabe usar Docker? ¿O eres un facilitador de cultura?

## Comprensión intuitiva

Imagina un equipo de Fórmula 1:
- **Antes (Silos)**: Los ingenieros diseñaban el motor en la fábrica y se lo enviaban por correo a los mecánicos en la pista. Si el motor no encajaba, los mecánicos insultaban a los ingenieros.
- **DevOps (Real)**: Ingenieros y mecánicos trabajan juntos en el box. El ingeniero ve cómo el mecánico sufre para cambiar una rueda y rediseña la tuerca para que sea más fácil.
- **Site Reliability Engineer (SRE)**: Es el mecánico de élite que usa telemetría para predecir cuándo va a fallar el motor antes de que salga humo.
- **Platform Engineer**: Es quien construye las herramientas (el gato hidráulico, la pistola de tuercas) para que el equipo sea más rápido.

## Definición formal

Aunque los títulos varían, las responsabilidades se agrupan en:

1.  **DevOps Advocate / Facilitator**: No toca producción. Ayuda a los equipos a adoptar la cultura, enseña herramientas y rompe silos.
2.  **Site Reliability Engineer (SRE)**: Implementación de DevOps creada por Google. Se enfoca en la confiabilidad. Trata las operaciones como un problema de software.
3.  **Platform Engineer**: Construye una "Plataforma Interna de Desarrollo" (IDP) para que los desarrolladores puedan auto-servirse infraestructura (Self-Service).
4.  **DevSecOps Engineer**: Especialista en integrar seguridad en el pipeline.

### El mito del "Full Stack DevOps"
Esperar que una sola persona sepa programar en Java/Go, gestionar Kubernetes, configurar redes AWS, asegurar bases de datos y responder incidentes a las 3 AM es una receta para el **Burnout**.

## Implementación práctica: Tu día a día

Si te contratan como "DevOps Engineer", tu día idealmente debería verse así:

- **30% Codificando**: Escribiendo scripts (Python/Bash), configurando IaC (Terraform) o arreglando bugs en la app.
- **30% Mejorando la Plataforma**: Optimizando el pipeline de CI/CD para que sea más rápido.
- **20% Soporte/Consultoría**: Ayudando a los devs a entender por qué falló su build.
- **20% Aprendizaje/Guardia**: Estudiando nuevas herramientas o respondiendo incidentes (si estás on-call).

Si tu día es **100% respondiendo tickets y apagando fuegos**, no eres DevOps. Eres un SysAdmin glorificado y estresado.

## Trampas y Errores Comunes

### ❌ Error: "DevOps Team" como cuello de botella
Los desarrolladores no tienen permisos para desplegar. Tienen que pedirle al "Equipo DevOps" que despliegue por ellos.
**Corrección**: El equipo DevOps debe construir la *carretera* (el pipeline), pero los desarrolladores deben *conducir el coche* (desplegar ellos mismos).

### ❌ Error: Ignorar el negocio
Obsesionarse con optimizar Kubernetes mientras la empresa pierde dinero porque nadie usa la aplicación.
**Corrección**: Siempre alinea tu trabajo con el valor para el cliente.

## Resumen del concepto

**En una frase**: No busques ser el "héroe" que lo arregla todo; busca ser el "ingeniero de plataforma" que empodera a los demás para que no rompan nada.
**Cuándo usarlo**: Al definir tu rol en una nueva empresa o al contratar.
**Siguiente paso**: Ahora que sabemos quiénes somos, veamos qué NO debemos hacer en el **Subtema 1.2.2: Anti-patrones comunes**.
