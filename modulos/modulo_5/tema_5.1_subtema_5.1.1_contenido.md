# MÓDULO 5: CONFIGURACIÓN Y AUTOMATIZACIÓN
## TEMA 5.1: GESTIÓN DE CONFIGURACIÓN
### SUBTEMA 5.1.1: ANSIBLE: INVENTARIOS Y PLAYBOOKS

Ansible = configuración sin agentes. SSH + Python + YAML.

## Inventario
```ini
[webservers]
web1.example.com
web2.example.com

[databases]
db1.example.com
```

## Playbook básico
```yaml
- name: Configurar webservers
  hosts: webservers
  become: yes
  tasks:
    - name: Instalar nginx
      apt:
        name: nginx
        state: present
    - name: Iniciar nginx
      service:
        name: nginx
        state: started
```

## Ejecución
```bash
ansible-playbook -i inventory.ini site.yml
```

Resumen: Ansible = agentless, declarativo, fácil. Inventarios definen hosts, playbooks definen tareas.
