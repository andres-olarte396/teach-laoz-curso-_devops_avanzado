# MÓD 10: CLOUD NATIVE
## TEMA 10.1: MULTI-CLOUD PATTERNS
### SUBTEMA 10.1.1: AWS VS GCP VS AZURE

Comparación de los 3 grandes. Diferentes filosofías, mismo objetivo.

## Servicios equivalentes

| Servicio | AWS | GCP | Azure |
|----------|-----|-----|-------|
| Compute | EC2 | Compute Engine | VMs |
| Containers | ECS/EKS | GKE | AKS |
| Functions | Lambda | Cloud Functions | Functions |
| Storage | S3 | Cloud Storage | Blob Storage |
| DB SQL | RDS | Cloud SQL | SQL Database |
| DB NoSQL | DynamoDB | Firestore | Cosmos DB |
| Networking | VPC | VPC | VNet |

## Filosofías
- **AWS**: Más servicios (400+), más flexible, más complejo.
- **GCP**: Enfoque K8s/containers, ML/AI fuerte, más simple.
- **Azure**: Integración Microsoft (AD, Office), híbrido fuerte.

## Pricing
Todos similares, pero diferencias en:
- **Data egress**: Salida de datos (caro en AWS).
- **Reserved instances**: Descuentos por commitment.

Resumen: AWS = más maduro. GCP = más K8s-native. Azure = mejor para Microsoft shops. Servicios equivalentes en todos.
