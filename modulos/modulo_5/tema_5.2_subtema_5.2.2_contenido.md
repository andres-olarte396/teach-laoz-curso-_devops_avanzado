# MÓD 5
## TEMA 5.2
### SUBTEMA 5.2.2: REMEDIACIÓN AUTOMÁTICA

Detectar drift es bueno. Remediarlo automáticamente es mejor.

## Cron job
```bash
0 */6 * * * ansible-playbook /etc/ansible/site.yml
# Ejecuta playbook cada 6 horas, restaura estado
```

## Chef/Puppet mode
Chef/Puppet ejecutan en modo daemon, verificando cada 30 minutos.

Resumen: Automatiza ejecución periódica de config management. Drift se corrige automáticamente.
