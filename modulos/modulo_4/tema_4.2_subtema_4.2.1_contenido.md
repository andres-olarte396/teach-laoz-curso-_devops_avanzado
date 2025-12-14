# MÓDULO 4: IaC
## TEMA 4.2: MODULARIDAD Y ENTORNOS
### SUBTEMA 4.2.1: MÓDULOS REUTILIZABLES

DRY (Don't Repeat Yourself) aplica a infraestructura. Los módulos encapsulan lógica reutilizable.

## Estructura
```
modules/
  vpc/
    main.tf
    variables.tf
    outputs.tf
  eks/
    main.tf
    variables.tf
```

## Uso
```hcl
module "prod_vpc" {
  source = "./modules/vpc"
  cidr_block = "10.0.0.0/16"
  environment = "production"
}

module "dev_vpc" {
  source = "./modules/vpc"
  cidr_block = "10.1.0.0/16"
  environment = "development"
}
```

Resumen: Módulos = funciones reutilizables. Define una vez, usa muchas veces con diferentes parámetros.
