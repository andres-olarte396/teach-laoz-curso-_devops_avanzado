# PENSUM DE COMPETENCIAS: DEVOPS ENGINEER (ADVANCED)

## PERFIL DE EGRESO
Al finalizar este curso, el estudiante será capaz de:
1.  **Diseñar Arquitecturas Resilientes**: Construir sistemas distribuidos que toleren fallos y escalen automáticamente.
2.  **Automatizar el SDLC**: Implementar pipelines de CI/CD que reduzcan el tiempo de entrega de semanas a minutos.
3.  **Gestionar Infraestructura como Código**: Tratar la infraestructura con la misma disciplina que el software de aplicación.
4.  **Operar con Observabilidad**: Diagnosticar problemas complejos en segundos utilizando métricas, logs y trazas distribuidas.
5.  **Integrar Seguridad (DevSecOps)**: Blindar la cadena de suministro de software desde el primer commit.

## MATRIZ DE COMPETENCIAS POR MÓDULO

| Módulo | Competencia Específica (Saber Hacer) | Resultado de Aprendizaje (Evidencia) |
| :--- | :--- | :--- |
| **Módulo 1: Introducción** | Analizar la madurez DevOps de una organización e identificar cuellos de botella culturales y técnicos. | **Análisis crítico de un pipeline real** de una empresa, identificando desperdicios (Lean) y proponiendo mejoras CALMS. |
| **Módulo 2: Git Avanzado** | Gestionar flujos de trabajo colaborativos complejos y resolver conflictos de integración a gran escala. | **Migración de un repositorio a Trunk-Based Development**, implementando políticas de protección de ramas y hooks de validación. |
| **Módulo 3: CI/CD** | Construir pipelines de integración y entrega continua que garanticen la calidad y reproducibilidad del software. | **Pipeline de CI completo** con etapas de build, test unitarios, análisis estático (linter) y generación de artefactos versionados. |
| **Módulo 4: IaC** | Provisionar y gestionar infraestructura en la nube de manera declarativa, modular y reproducible. | **Infraestructura replicable en Staging y Producción** usando Terraform/Pulumi, con gestión de estado remoto y módulos reutilizables. |
| **Módulo 5: Configuración** | Automatizar la configuración de servidores y garantizar la consistencia del entorno (idempotencia). | **Automatización completa del provisionamiento** de servidores usando Ansible/Chef, con remediación automática de configuration drift. |
| **Módulo 6: Docker** | Empaquetar aplicaciones en contenedores optimizados, seguros y ligeros para su distribución. | **Imagen de contenedor optimizada** (multi-stage build), libre de vulnerabilidades críticas y sin secretos hardcodeados. |
| **Módulo 7: Kubernetes** | Orquestar el despliegue, escalado y gestión de aplicaciones contenerizadas en clústeres. | **Aplicación desplegada en Kubernetes** usando Helm Charts, con configuración de Ingress y Horizontal Pod Autoscaling (HPA). |
| **Módulo 8: Observabilidad** | Instrumentar aplicaciones y sistemas para visualizar su estado interno y detectar anomalías proactivamente. | **Dashboard operativo en Grafana** conectado a Prometheus, con alertas configuradas para SLIs críticos (latencia, errores). |
| **Módulo 9: DevSecOps** | Integrar controles de seguridad automatizados en el pipeline de CI/CD (Shift-Left). | **Pipeline de CI/CD seguro** que incluye escaneo de dependencias (SCA), análisis estático de seguridad (SAST) y firma de imágenes. |
| **Módulo 10: Cloud** | Diseñar redes y gestionar servicios administrados en la nube pública bajo principios de Well-Architected Framework. | **Infraestructura de red segura (VPC)** y servicios de datos (RDS/S3) desplegados en AWS/Azure/GCP con controles de costos (FinOps). |
| **Módulo 11: SRE** | Definir y monitorear objetivos de nivel de servicio (SLOs) para balancear fiabilidad y velocidad de innovación. | **Diseño de SLOs reales** para un servicio crítico y simulación de gestión de incidentes con postmortem blameless. |
| **Módulo 12: Proyecto Final** | Integrar todas las prácticas DevOps para construir, desplegar y operar una plataforma compleja end-to-end. | **Plataforma completa operativa** con CI/CD, IaC, K8s y Observabilidad, sometida a pruebas de carga y caos (Chaos Engineering). |
