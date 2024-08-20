UE5_ENV
=========

Роль для настройки окружения для сборок на Unreal-Engine

Role Variables
--------------

```
# vars/main.yml
# Юникс юзер для запуска gitlab-runner, сборки unreal-engine из исходников.
gitlab-runner-user: ue5
```

Dependencies
------------
```
ansible-galaxy collection install community.general:==9.2.0
ansible-galaxy collection install ansible.posix:==1.5.4
ansible-galaxy collection install ansible.utils
```

Example Playbook
----------------

```
---
- name: UE5 builder init playbook
  hosts: unreal_nodes
  roles: 
    - name: ue5_env
```

License
-------

BSD

Author Information
------------------

An optional section for the role authors to include contact information, or a website (HTML is not allowed).
