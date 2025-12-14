# GUIÓN: GIT FLOW VS TRUNK-BASED
## FICHA TÉCNICA
- **Duración Estimada**: 4 minutos
- **Tono**: Comparativo, pragmático, desafiante a dogmas.

---

### 00:00 - INTRODUCCIÓN
**[LOCUTOR]**:
Git es como un cuchillo. Puedes usarlo para cocinar... o para herirte.
La forma en que organizas tus ramas define si tu equipo es ágil o un campo minado de merge conflicts.
Hoy: GitFlow versus Trunk-Based Development. La batalla definitiva.

### 00:25 - GITFLOW: EL VETERANO
**[LOCUTOR]**:
GitFlow fue creado en 2010 por Vincent Driessen. En su momento, fue revolucionario.
Tienes ramas para todo: `master`, `develop`, `feature`, `release`, `hotfix`.
Es como un sistema de castas. Cada tipo de commit sabe su lugar.
Funciona perfectamente... si haces releases cada 3 meses.
Pero si quieres hacer 10 deploys al día, GitFlow es una prisión. ¿Por qué? Porque tus features viven en ramas separadas por semanas. Y cuando intentas fusionar 5 features de 2 semanas cada una... bienvenido al infierno de los merges.

### 01:10 - TRUNK-BASED: EL REBELDE
**[LOCUTOR]**:
Trunk-Based Development dice: "No. Solo una rama. `main`. Todos integran ahí, todos los días".
Google lo usa. Facebook lo usa. ¿Cómo trabajan en features grandes sin chocar?
Feature Flags. Despliegas código inactivo. Lo enciendes cuando está listo.
Es contraintuitivo, pero funciona. ¿El secreto? Tests automáticos brutalmente completos.
Si no tienes cobertura del 80% mínimo, Trunk-Based te va a destruir porque romperás `main` cada hora.

### 02:00 - LA VERDAD INCÓMODA
**[LOCUTOR]**:
Aquí está la parte que nadie te dice: GitFlow NO es obsoleto. Trunk-Based NO es la solución universal.
¿Haces apps móviles con releases aprobados por Apple? GitFlow.
¿Haces SaaS web con deploys continuos? Trunk-Based.
El problema es que muchos equipos usan GitFlow por inercia, no por necesidad. "Siempre lo hemos hecho así".

### 02:40 - CIERRE
**[LOCUTOR]**:
Pregúntate: ¿Cuál es tu frecuencia de deploy ideal?
Si es "varias veces al día", GitFlow te frena.
Si es "una vez al mes con control estricto", Trunk-Based te da miedo.
Elige con propósito. No por moda.
En el próximo subtema: Monorepos vs Polyrepos. Otra guerra religiosa.
