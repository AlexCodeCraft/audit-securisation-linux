# Audit du système Ubuntu Server

## Objectif
- Identifier les éléments sensibles d’une installation Linux standard.
- Repérer les failles ou configurations risquées avant durcissement.

## Commandes exécutées

- Liste des utilisateurs :
  ```bash
  cut -d: -f1 /etc/passwd

- Services et ports ouverts :
  ```bash
  sudo ss -tuln
  
- Vérification des utilisateurs ayant les droits sudo :
  ```bash
  sudo cat /etc/sudoers
  sudo ls -l /etc/sudoers.d/

 - État du pare-feu :
   ```bash
   sudo ufw status

 - Configuration SSH (accès root) :
   ```bash
   cat /etc/ssh/sshd_config | grep PermitRootLogin


== Observations ==

Utilisateur réel : cyberuser

Le pare-feu était désactivé par défaut

Le fichier sshd_config permettait l'accès root via SSH

