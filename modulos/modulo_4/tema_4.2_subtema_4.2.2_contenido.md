# MÓDULO 4: IaC
## TEMA 4.2: MODULARIDAD Y ENTORNOS
### SUBTEMA 4.2.2: GESTIÓN DE ENTORNOS (WORKSPACES)

Mismo código, diferentes ambientes. Workspaces o directorios separados.

## Workspaces
```bash
terraform workspace new prod
terraform workspace new staging
terraform workspace select prod
terraform apply  # Aplica solo en prod workspace
```

## Alternativa: Directorios
```
environments/
  prod/
    main.tf
    terraform.tfvars
  staging/
    main.tf
    terraform.tfvars
```

## Variación por ambiente
```hcl
variable "instance_count" {
  type = map
  default = {
    prod   = 5
    staging = 2
  }
}

resource "aws_instance" "app" {
  count = var.instance_count[terraform.workspace]
}
```

Resumen: Workspaces o directorios. Mismo código, configs diferentes (instancias, tamaños, regiones).
