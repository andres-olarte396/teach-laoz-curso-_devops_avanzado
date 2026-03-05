# MÓDULO 7: ORQUESTACIÓN (KUBERNETES)
## TEMA 7.1: ARQUITECTURA K8S  
### SUBTEMA 7.1.1: CONTROL PLANE VS WORKER NODES

Kubernetes = orquestador de containers. Control Plane gestiona, Workers ejecutan.

## Control Plane Components
- **API Server**: Frontend de K8s. Todo habla con él (kubectl, schedulers).
- **etcd**: DB distribuida (key-value). Estado del cluster.
- **Scheduler**: Decide en qué nodo colocar cada Pod.
- **Controller Manager**: Reconcilia estado deseado vs real.
- **Cloud Controller**: Integración con AWS/GCP/Azure (LoadBalancers, Volumes).

## Worker Nodes
- **kubelet**: Agente que ejecuta containers (habla con Docker/containerd).
- **kube-proxy**: Networking, routing de servicios.
- **Container Runtime**: Docker, containerd, CRI-O.

## Flujo
```
kubectl apply -f deployment.yml
    ↓
API Server (valida, autentica)
    ↓
etcd (guarda estado deseado)
    ↓
Scheduler (elige nodo)
    ↓
kubelet (descarga imagen, starts container)
```

Resumen: Control Plane = cerebro. Workers = músculos. Todo pasa por API Server.
