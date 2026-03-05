# MÓD 9: SEGURIDAD (DEVSECOPS)
## TEMA 9.1: SHIFT-LEFT SECURITY
### SUBTEMA 9.1.1: SAST Y DAST EN CI

Shift-Left = seguridad temprana en CI/CD, no al final.

## SAST (Static Application Security Testing)
Analiza código fuente sin ejecutar. Detecta: SQL injection, XSS, hardcoded secrets.

**Herramientas**: SonarQube, Checkmarx, Semgrep.

```yaml
# CI pipeline
- name: SAST Scan
  run: semgrep --config auto .
  # Falla build si critical vulnerabilities
```

## DAST (Dynamic Application Security Testing)
Analiza app en ejecución (black-box). Hace requests maliciosos, busca vulnerabilidades runtime.

**Herramientas**: OWASP ZAP, Burp Suite.

```yaml
- name: DAST Scan
  run: docker run -t owasp/zap2docker-stable zap-baseline.py -t https://app
.example.com
```

## Comparación
- **SAST**: Código → Encuentra bugs antes de compilar.
- **DAST**: App corriendo → Encuentra config errors, auth bypasses.

Resumen: SAST = código estático. DAST= app dinámica. Ambos en CI. Shift-left security.
