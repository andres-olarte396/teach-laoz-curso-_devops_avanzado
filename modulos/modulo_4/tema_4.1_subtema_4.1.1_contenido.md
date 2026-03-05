# MÓDULO 4: INFRAESTRUCTURA COMO CÓDIGO (IaC)
## TEMA 4.1: FUNDAMENTOS DE IAC
### SUBTEMA 4.1.1: TERRAFORM VS PULUMI

IaC = Infraestructura definida en código. Versionable, reproducible, auditable.

## Terraform (Declarativo)
HCL (HashiCorp Configuration Language). Describes el estado deseado.
```hcl
resource "aws_instance" "web" {
  ami           = "ami-123456"
  instance_type = "t2.micro"
  tags = {
    Name = "WebServer"
  }
}
```

## Pulumi (Imperativo)
Usa lenguajes reales (Python, TypeScript, Go).
```typescript
const server = new aws.ec2.Instance("web", {
    ami: "ami-123456",
    instanceType: "t2.micro",
    tags: { Name: "WebServer" }
});
```

## Comparación
- **Terraform**: Mayor adopción, ecosistema maduro, curva de aprendizaje (HCL).
- **Pulumi**: Usa lenguajes conocidos, programación real (loops, conditionals), menos maduro.

Resumen: Terraform = estándar de facto. Pulumi = programación real pero menos adopción.
