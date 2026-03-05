# ARQUITECTURA CURRICULAR: DEVOPS ENGINEER (ADVANCED)

## METADATA

- **Complejidad**: Alta
- **Duración estimada**: 360 horas (1 año)
- **Audiencia objetivo**: Estudiantes de pregrado (20-25 años)
- **Prerrequisitos**: Programación básica (Python/JS), Linux básico.
- **Enfoque**: Cultura + Prácticas + Automatización.

## OBJETIVOS GENERALES
1. Dominar el ciclo de vida completo de desarrollo de software (SDLC) automatizado.
2. Implementar infraestructura inmutable y escalable en la nube.
3. Gestionar la confiabilidad del sitio (SRE) con métricas reales.
4. Integrar seguridad en cada etapa del pipeline (DevSecOps).

## ESTRUCTURA MODULAR (12 MESES)

### MÓDULO 1: INTRODUCCIÓN A DEVOPS (CULTURA Y CONCEPTOS)
**Entregable**: Análisis crítico de un pipeline real.

#### TEMA 1.1: Fundamentos del Movimiento
- **Subtema 1.1.1**: Historia y "The Wall of Confusion"
  - Objetivo: Entender el conflicto Dev vs Ops.
- **Subtema 1.1.2**: Principios CALMS y Lean
  - Objetivo: Aplicar Culture, Automation, Lean, Measurement, Sharing.

#### TEMA 1.2: Roles y Realidad
- **Subtema 1.2.1**: Roles y Responsabilidades
  - Objetivo: Desmitificar "El Ingeniero DevOps" vs Cultura DevOps.
- **Subtema 1.2.2**: Anti-patrones comunes
  - Objetivo: Identificar silos y falsos DevOps.

---

### MÓDULO 2: CONTROL DE VERSIONES AVANZADO (GIT)
**Entregable**: Migración a Trunk-Based Development.

#### TEMA 2.1: Estrategias de Ramificación
- **Subtema 2.1.1**: GitFlow vs Trunk-Based
  - Objetivo: Comparar flujos y elegir según contexto.
- **Subtema 2.1.2**: Monorepos vs Polyrepos
  - Objetivo: Gestionar dependencias a gran escala.

#### TEMA 2.2: Automatización en Git
- **Subtema 2.2.1**: Git Hooks
  - Objetivo: Automatizar validaciones locales (pre-commit).
- **Subtema 2.2.2**: Políticas de Pull Request
  - Objetivo: Code Review efectivo y merge strategies.

---

### MÓDULO 3: CI/CD FUNDAMENTOS
**Entregable**: Pipeline CI con pruebas y análisis estático.

#### TEMA 3.1: Integración Continua (CI)
- **Subtema 3.1.1**: Pipelines Declarativos
  - Objetivo: Definir pipelines como código (YAML).
- **Subtema 3.1.2**: Análisis Estático y Linters
  - Objetivo: Automatizar calidad de código (SAST básico).

#### TEMA 3.2: Entrega Continua (CD)
- **Subtema 3.2.1**: Artefactos Reproducibles
  - Objetivo: Construir una vez, desplegar en cualquier lugar.
- **Subtema 3.2.2**: Estrategias de Versionado (SemVer)
  - Objetivo: Gestionar versiones de artefactos.

---

### MÓDULO 4: INFRAESTRUCTURA COMO CÓDIGO (IaC)
**Entregable**: Infraestructura replicable en Staging/Prod.

#### TEMA 4.1: Fundamentos de IaC
- **Subtema 4.1.1**: Terraform vs Pulumi
  - Objetivo: Evaluar herramientas declarativas vs imperativas.
- **Subtema 4.1.2**: Gestión del Estado (State)
  - Objetivo: Entender y proteger el state file.

#### TEMA 4.2: Modularidad y Entornos
- **Subtema 4.2.1**: Módulos Reutilizables
  - Objetivo: Aplicar DRY a la infraestructura.
- **Subtema 4.2.2**: Gestión de Entornos (Workspaces)
  - Objetivo: Paridad entre Dev, Staging y Prod.

---

### MÓDULO 5: CONFIGURACIÓN Y AUTOMATIZACIÓN
**Entregable**: Automatización completa del provisionamiento.

#### TEMA 5.1: Gestión de Configuración
- **Subtema 5.1.1**: Ansible: Inventarios y Playbooks
  - Objetivo: Configurar servidores sin agentes.
- **Subtema 5.1.2**: Idempotencia
  - Objetivo: Garantizar resultados consistentes.

#### TEMA 5.2: Drift y Remediación
- **Subtema 5.2.1**: Detección de Configuration Drift
  - Objetivo: Identificar cambios manuales no autorizados.
- **Subtema 5.2.2**: Remediación Automática
  - Objetivo: Restaurar estado deseado automáticamente.

---

### MÓDULO 6: CONTENEDORES (DOCKER)
**Entregable**: Imagen optimizada y segura.

#### TEMA 6.1: Docker Internals
- **Subtema 6.1.1**: Namespaces y Cgroups
  - Objetivo: Comprender el aislamiento a bajo nivel.
- **Subtema 6.1.2**: Union File System
  - Objetivo: Entender las capas de imagen.

#### TEMA 6.2: Best Practices
- **Subtema 6.2.1**: Multi-stage Builds
  - Objetivo: Reducir tamaño de imágenes drásticamente.
- **Subtema 6.2.2**: Gestión de Secretos en Build
  - Objetivo: No quemar credenciales en imágenes.

---

### MÓDULO 7: ORQUESTACIÓN (KUBERNETES)
**Entregable**: App desplegada con Helm y Autoscaling.

#### TEMA 7.1: Arquitectura K8s
- **Subtema 7.1.1**: Control Plane vs Worker Nodes
  - Objetivo: Entender componentes (API Server, Etcd, Kubelet).
- **Subtema 7.1.2**: Objetos Básicos (Pod, Service, Ingress)
  - Objetivo: Exponer aplicaciones.

#### TEMA 7.2: Operación Avanzada
- **Subtema 7.2.1**: Helm Charts
  - Objetivo: Empaquetar aplicaciones K8s.
- **Subtema 7.2.2**: Autoscaling (HPA/VPA)
  - Objetivo: Escalar según demanda.

---

### MÓDULO 8: OBSERVABILIDAD (O11Y)
**Entregable**: Dashboard operativo + alertas.

#### TEMA 8.1: Los 3 Pilares
- **Subtema 8.1.1**: Métricas (Prometheus)
  - Objetivo: Instrumentar código (RED Method).
- **Subtema 8.1.2**: Logs Estructurados
  - Objetivo: Centralizar logs (ELK/Loki).

#### TEMA 8.2: Tracing y Visualización
- **Subtema 8.2.1**: Distributed Tracing (OpenTelemetry)
  - Objetivo: Seguir peticiones entre microservicios.
- **Subtema 8.2.2**: Dashboards en Grafana
  - Objetivo: Visualizar salud del sistema.

---

### MÓDULO 9: SEGURIDAD (DEVSECOPS)
**Entregable**: Pipeline con controles de seguridad.

#### TEMA 9.1: Shift-Left Security
- **Subtema 9.1.1**: SAST y DAST en CI
  - Objetivo: Encontrar vulnerabilidades temprano.
- **Subtema 9.1.2**: Software Bill of Materials (SBOM)
  - Objetivo: Gestionar seguridad de dependencias (Supply Chain).

#### TEMA 9.2: Seguridad en Runtime
- **Subtema 9.2.1**: Seguridad en Contenedores
  - Objetivo: Escaneo de imágenes y distroless.
- **Subtema 9.2.2**: Políticas de Red (Network Policies)
  - Objetivo: Zero Trust en K8s.

---

### MÓDULO 10: CLOUD (AWS/AZURE/GCP)
**Entregable**: Infraestructura en cloud productivo.

#### TEMA 10.1: Fundamentos Cloud
- **Subtema 10.1.1**: IAM e Identidad
  - Objetivo: Gestionar permisos (Least Privilege).
- **Subtema 10.1.2**: Networking (VPC, Subnets)
  - Objetivo: Diseñar redes seguras en la nube.

#### TEMA 10.2: Servicios Administrados y Costos
- **Subtema 10.2.1**: Servicios PaaS (RDS, S3)
  - Objetivo: Delegar complejidad operativa.
- **Subtema 10.2.2**: FinOps Básico
  - Objetivo: Controlar y optimizar costos.

---

### MÓDULO 11: SRE Y CONFIABILIDAD
**Entregable**: Diseño de SLOs + Simulación.

#### TEMA 11.1: Midiendo Confiabilidad
- **Subtema 11.1.1**: SLIs, SLOs y SLAs
  - Objetivo: Definir objetivos de nivel de servicio.
- **Subtema 11.1.2**: Error Budgets
  - Objetivo: Balancear velocidad vs estabilidad.

#### TEMA 11.2: Gestión de Incidentes
- **Subtema 11.2.1**: Respuesta a Incidentes
  - Objetivo: Roles y comunicación en crisis.
- **Subtema 11.2.2**: Postmortems Blameless
  - Objetivo: Aprender de los fallos sin culpa.

---

### MÓDULO 12: PROYECTO FINAL INTEGRADO
**Entregable**: Proyecto completo simulando operación real.

#### TEMA 12.1: Construcción
- **Subtema 12.1.1**: Arquitectura e Implementación
  - Objetivo: Integrar Git, CI/CD, IaC y K8s.

#### TEMA 12.2: Operación
- **Subtema 12.2.1**: Simulación de Incidentes (Chaos Engineering)
  - Objetivo: Sobrevivir a fallos inyectados.

---

## ESTRUCTURA JSON PARA MANAGER

```json
[
  {
    "modulo_id": 1,
    "titulo": "Introducción a DevOps",
    "temas": [
      {
        "tema_id": "1.1",
        "titulo": "Fundamentos del Movimiento",
        "subtemas": [
          { "subtema_id": "1.1.1", "titulo": "Historia y The Wall of Confusion" },
          { "subtema_id": "1.1.2", "titulo": "Principios CALMS y Lean" }
        ]
      },
      {
        "tema_id": "1.2",
        "titulo": "Roles y Realidad",
        "subtemas": [
          { "subtema_id": "1.2.1", "titulo": "Roles y Responsabilidades" },
          { "subtema_id": "1.2.2", "titulo": "Anti-patrones comunes" }
        ]
      }
    ]
  },
  {
    "modulo_id": 2,
    "titulo": "Control de Versiones Avanzado",
    "temas": [
      {
        "tema_id": "2.1",
        "titulo": "Estrategias de Ramificación",
        "subtemas": [
          { "subtema_id": "2.1.1", "titulo": "GitFlow vs Trunk-Based" },
          { "subtema_id": "2.1.2", "titulo": "Monorepos vs Polyrepos" }
        ]
      },
      {
        "tema_id": "2.2",
        "titulo": "Automatización en Git",
        "subtemas": [
          { "subtema_id": "2.2.1", "titulo": "Git Hooks" },
          { "subtema_id": "2.2.2", "titulo": "Políticas de Pull Request" }
        ]
      }
    ]
  },
  {
    "modulo_id": 3,
    "titulo": "CI/CD Fundamentos",
    "temas": [
      {
        "tema_id": "3.1",
        "titulo": "Integración Continua (CI)",
        "subtemas": [
          { "subtema_id": "3.1.1", "titulo": "Pipelines Declarativos" },
          { "subtema_id": "3.1.2", "titulo": "Análisis Estático y Linters" }
        ]
      },
      {
        "tema_id": "3.2",
        "titulo": "Entrega Continua (CD)",
        "subtemas": [
          { "subtema_id": "3.2.1", "titulo": "Artefactos Reproducibles" },
          { "subtema_id": "3.2.2", "titulo": "Estrategias de Versionado" }
        ]
      }
    ]
  },
  {
    "modulo_id": 4,
    "titulo": "Infraestructura como Código (IaC)",
    "temas": [
      {
        "tema_id": "4.1",
        "titulo": "Fundamentos de IaC",
        "subtemas": [
          { "subtema_id": "4.1.1", "titulo": "Terraform vs Pulumi" },
          { "subtema_id": "4.1.2", "titulo": "Gestión del Estado" }
        ]
      },
      {
        "tema_id": "4.2",
        "titulo": "Modularidad y Entornos",
        "subtemas": [
          { "subtema_id": "4.2.1", "titulo": "Módulos Reutilizables" },
          { "subtema_id": "4.2.2", "titulo": "Gestión de Entornos" }
        ]
      }
    ]
  },
  {
    "modulo_id": 5,
    "titulo": "Configuración y Automatización",
    "temas": [
      {
        "tema_id": "5.1",
        "titulo": "Gestión de Configuración",
        "subtemas": [
          { "subtema_id": "5.1.1", "titulo": "Ansible: Inventarios y Playbooks" },
          { "subtema_id": "5.1.2", "titulo": "Idempotencia" }
        ]
      },
      {
        "tema_id": "5.2",
        "titulo": "Drift y Remediación",
        "subtemas": [
          { "subtema_id": "5.2.1", "titulo": "Detección de Configuration Drift" },
          { "subtema_id": "5.2.2", "titulo": "Remediación Automática" }
        ]
      }
    ]
  },
  {
    "modulo_id": 6,
    "titulo": "Contenedores (Docker)",
    "temas": [
      {
        "tema_id": "6.1",
        "titulo": "Docker Internals",
        "subtemas": [
          { "subtema_id": "6.1.1", "titulo": "Namespaces y Cgroups" },
          { "subtema_id": "6.1.2", "titulo": "Union File System" }
        ]
      },
      {
        "tema_id": "6.2",
        "titulo": "Best Practices",
        "subtemas": [
          { "subtema_id": "6.2.1", "titulo": "Multi-stage Builds" },
          { "subtema_id": "6.2.2", "titulo": "Gestión de Secretos en Build" }
        ]
      }
    ]
  },
  {
    "modulo_id": 7,
    "titulo": "Orquestación (Kubernetes)",
    "temas": [
      {
        "tema_id": "7.1",
        "titulo": "Arquitectura K8s",
        "subtemas": [
          { "subtema_id": "7.1.1", "titulo": "Control Plane vs Worker Nodes" },
          { "subtema_id": "7.1.2", "titulo": "Objetos Básicos" }
        ]
      },
      {
        "tema_id": "7.2",
        "titulo": "Operación Avanzada",
        "subtemas": [
          { "subtema_id": "7.2.1", "titulo": "Helm Charts" },
          { "subtema_id": "7.2.2", "titulo": "Autoscaling" }
        ]
      }
    ]
  },
  {
    "modulo_id": 8,
    "titulo": "Observabilidad (O11y)",
    "temas": [
      {
        "tema_id": "8.1",
        "titulo": "Los 3 Pilares",
        "subtemas": [
          { "subtema_id": "8.1.1", "titulo": "Métricas (Prometheus)" },
          { "subtema_id": "8.1.2", "titulo": "Logs Estructurados" }
        ]
      },
      {
        "tema_id": "8.2",
        "titulo": "Tracing y Visualización",
        "subtemas": [
          { "subtema_id": "8.2.1", "titulo": "Distributed Tracing" },
          { "subtema_id": "8.2.2", "titulo": "Dashboards en Grafana" }
        ]
      }
    ]
  },
  {
    "modulo_id": 9,
    "titulo": "Seguridad (DevSecOps)",
    "temas": [
      {
        "tema_id": "9.1",
        "titulo": "Shift-Left Security",
        "subtemas": [
          { "subtema_id": "9.1.1", "titulo": "SAST y DAST en CI" },
          { "subtema_id": "9.1.2", "titulo": "Software Bill of Materials (SBOM)" }
        ]
      },
      {
        "tema_id": "9.2",
        "titulo": "Seguridad en Runtime",
        "subtemas": [
          { "subtema_id": "9.2.1", "titulo": "Seguridad en Contenedores" },
          { "subtema_id": "9.2.2", "titulo": "Políticas de Red" }
        ]
      }
    ]
  },
  {
    "modulo_id": 10,
    "titulo": "Cloud (AWS/Azure/GCP)",
    "temas": [
      {
        "tema_id": "10.1",
        "titulo": "Fundamentos Cloud",
        "subtemas": [
          { "subtema_id": "10.1.1", "titulo": "IAM e Identidad" },
          { "subtema_id": "10.1.2", "titulo": "Networking" }
        ]
      },
      {
        "tema_id": "10.2",
        "titulo": "Servicios Administrados y Costos",
        "subtemas": [
          { "subtema_id": "10.2.1", "titulo": "Servicios PaaS" },
          { "subtema_id": "10.2.2", "titulo": "FinOps Básico" }
        ]
      }
    ]
  },
  {
    "modulo_id": 11,
    "titulo": "SRE y Confiabilidad",
    "temas": [
      {
        "tema_id": "11.1",
        "titulo": "Midiendo Confiabilidad",
        "subtemas": [
          { "subtema_id": "11.1.1", "titulo": "SLIs, SLOs y SLAs" },
          { "subtema_id": "11.1.2", "titulo": "Error Budgets" }
        ]
      },
      {
        "tema_id": "11.2",
        "titulo": "Gestión de Incidentes",
        "subtemas": [
          { "subtema_id": "11.2.1", "titulo": "Respuesta a Incidentes" },
          { "subtema_id": "11.2.2", "titulo": "Postmortems Blameless" }
        ]
      }
    ]
  },
  {
    "modulo_id": 12,
    "titulo": "Proyecto Final Integrado",
    "temas": [
      {
        "tema_id": "12.1",
        "titulo": "Construcción",
        "subtemas": [
          { "subtema_id": "12.1.1", "titulo": "Arquitectura e Implementación" }
        ]
      },
      {
        "tema_id": "12.2",
        "titulo": "Operación",
        "subtemas": [
          { "subtema_id": "12.2.1", "titulo": "Simulación de Incidentes" }
        ]
      }
    ]
  }
]
```
