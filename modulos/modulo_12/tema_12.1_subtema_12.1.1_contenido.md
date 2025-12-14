# MÓD 12: PROYECTO FINAL INTEGRADOR
## TEMA 12.1: ARQUITECTURA Y DISEÑO
### SUBTEMA 12.1.1: PROYECTO CAPSTONE - ARQUITECTURA

Integra todos los módulos: Git, CI/CD, IaC, Docker, K8s, Observability, Security.

## Objetivo
Desplegar aplicación web completa (3-tier: frontend, API, database) con best practices DevOps.

## Requisitos
1. **Git**: Trunk-based development, PRs con políticas.
2. **CI/CD**: GitHub Actions con stages (lint, test, build, deploy).
3. **IaC**: Terraform provisiona cluster EKS/GKE.
4. **Containers**: Multi-stage Dockerfiles, distroless.
5. **K8s**: Deployments, Services, Ingress, HPA, NetworkPolicies.
6. **Observability**: Prometheus + Grafana + distributed tracing.
7. **Security**: SAST/DAST en CI, SBOM, secrets en Vault.
8. **SRE**: Define SLO, error budget, post-mortem template.

## Arquitectura
```
Usuario → Ingress → Frontend (React)
                  ↓
                Backend API (Node.js)
                  ↓
             PostgreSQL (RDS)

Observability: Prometheus + Grafana + Jaeger
Security: Trivy scan, NetworkPolicies, non-root containers
```

## Entregables
- Repos Git (infraestructura + aplicación)
- Pipelines CI/CD funcionando
- Cluster K8s deployado
- Dashboards Grafana
- Documentación (README, runbooks)

Resumen: Proyecto integrador que valida dominio completo del currículum DevOps.
