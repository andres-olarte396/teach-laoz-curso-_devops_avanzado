# MÓD 9: DEVSECOPS
## TEMA 9.1: SHIFT-LEFT
### SUBTEMA 9.1.2: SOFTWARE BILL OF MATERIALS (SBOM)

SBOM = lista de ingredientes del software. Qué librerías usas y sus versiones.

## Problema: Supply Chain Attacks
Log4Shell (2021): vulnerabilidad en librería Java logging usada por millones. ¿Cómo saber si tu app la usa?

## SBOM
```json
{
  "bomFormat": "CycloneDX",
  "components": [
    {"name": "log4j", "version": "2.14.0", "purl": "pkg:maven/org.apache/log4j"},
    {"name": "spring-boot", "version": "2.5.0"}
  ]
}
```

## Generación
```bash
# Con Syft
syft dir:. -o cyclonedx-json > sbom.json

# Check vulnerabilities
grype sbom:./sbom.json
```

## En CI
```yaml
- run: syft dir:. -o cyclonedx-json > sbom.json
- run: grype sbom:./sbom.json --fail-on critical
```

Resumen: SBOM = inventario de dependencias. Detecta vulnerabilidades en supply chain. Syft genera, Grype escanea.
