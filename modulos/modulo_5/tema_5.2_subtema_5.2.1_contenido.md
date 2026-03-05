# MÓD 5
## TEMA 5.2: DRIFT Y REMEDIACIÓN
### SUBTEMA 5.2.1: DETECCIÓN DE DRIFT

Configuration Drift = cambio manual no autorizado en servidor.

## Problema
Admin cambia config manualmente, bypassing Ansible. Servidor diverge del estado deseado.

## Detección
```bash
ansible-playbook site.yml --check --diff
# Muestra qué cambiaría sin aplicar
```

Resumen: Drift = desviación del estado deseado. Check mode detecta diferencias.
