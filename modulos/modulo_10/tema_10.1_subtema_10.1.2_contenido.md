# MÓD 10
## TEMA 10.1
### SUBTEMA 10.1.2: EVITANDO VENDOR LOCK-IN

Multi-cloud no significa usar 3 clouds. Significa poder migrar sin reescribir todo.

## Lock-in examples
- **AWS Lambda**: Código acoplado a AWS SDK.
- **DynamoDB**: NoSQL propietario.
- **CloudFormation**: IaC solo AWS.

## Estrategias anti-lock-in
1. **IaC portable**: Terraform (multi-cloud) vs CloudFormation (AWS-only).
2. **Container-first**: Apps en containers son portables (K8s en cualquier cloud).
3. **Abstraction layers**: CDK/Pulumi abstraen provider-specific details.
4. **Open standards**: PostgreSQL (portable) vs DynamoDB (AWS-only).

## Costo del multi-cloud real
- **Complejidad**: Mantener expertise en 3 clouds.
- **Data transfer**: Costoso entre clouds.
- **Tooling**: Diferentes consolas, CLIs.

Resumen: Multi-cloud ≠ usar todo. = No depender de APIs propietarias. Containers + Terraform + standards abiertos.
