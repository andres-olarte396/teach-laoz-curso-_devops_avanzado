# MÓDULO 6: CONTENEDORES (DOCKER)
## TEMA 6.1: DOCKER INTERNALS
### SUBTEMA 6.1.1: NAMESPACES Y CGROUPS

Docker no es magia. Son namespaces (aislamiento) + cgroups (límites de recursos) + union filesystem.

## Namespaces
Aíslan procesos para que vean solo su "universo":
- **PID**: Cada container ve sus propios procesos (PID 1 es su app).
- **NET**: Network stack propio (IP, puertos).
- **MNT**: Filesystem propio.
- **UTS**: Hostname propio.
- **IPC**: Colas de mensajes aisladas.

## Cgroups (Control Groups)
Limitan recursos:
```bash
docker run --memory="512m" --cpus="1.5" nginx
# Max 512MB RAM, 1.5 CPUs
```

## Verificación
```bash
# Ver namespaces
sudo ls -la /proc/$PID/ns/

# Ver cgroups
cat /sys/fs/cgroup/memory/docker/$CONTAINER_ID/memory.limit_in_bytes
```

Resumen: Containers = namespaces (aislamiento) + cgroups (límites). No son VMs, son procesos aislados.
