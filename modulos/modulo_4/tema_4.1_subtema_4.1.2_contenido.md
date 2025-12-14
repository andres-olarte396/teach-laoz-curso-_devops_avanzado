# MÓDULO 4: IaC
## TEMA 4.1: FUNDAMENTOS
### SUBTEMA 4.1.2: GESTIÓN DEL ESTADO

El State file es el cerebro de Terraform. Mapea tu código a la realidad de la nube.

## Problema
Terraform necesita saber qué recursos existen. El `terraform.tfstate` es ese registro.

##  Peligros
- **Almacenarlo en local**: Si pierdes el archivo, perdiste el control de tu infraestructura.
- **No sincronizado**: Dos personas aplican cambios simultáneamente = desastre.

## Solución: Backend Remoto
```hcl
terraform {
  backend "s3" {
    bucket = "mi-terraform-state"
    key    = "prod/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraform-locks"  # Para locking
  }
}
```

## State Locking
DynamoDB (AWS) o equivalente evita que dos personas modifiquen simultáneamente.

Resumen: State en S3 + locking en DynamoDB = seguridad y colaboración.
