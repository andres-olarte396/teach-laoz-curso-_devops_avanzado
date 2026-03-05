# MÓD 5: CONFIGURACIÓN
## TEMA 5.1
### SUBTEMA 5.1.2: IDEMPOTENCIA

Idempotencia = ejecutar N veces da mismo resultado que ejecutar 1 vez.

## Ejemplo no-idempotente (bash)
```bash
echo "alias ll='ls -la'" >> ~/.bashrc
# Ejecuta 3 veces, tendrás el alias 3 veces
```

## Ejemplo idempotente (Ansible)
```yaml
- lineinfile:
    path: ~/.bashrc
    line: "alias ll='ls -la'"
# Ejecuta 3 veces, solo 1 línea en el archivo
```

Resumen: Ansible garantiza idempotencia. Ejecutar playbook múltiples veces es seguro.
