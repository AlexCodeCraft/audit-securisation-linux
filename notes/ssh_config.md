
---

### 📄 `notes/ssh_config.md`

```markdown
# Sécurisation du service SSH

## Objectif
- Restreindre l’accès SSH en interdisant les connexions directes avec l’utilisateur root.

## Modifications apportées

- Fichier concerné :

/etc/ssh/sshd_config

- Ligne modifiée :
PermitRootLogin no


## Commandes utilisées
sudo nano /etc/ssh/sshd_config
sudo systemctl restart ssh

== Résultat ==

- La connexion SSH avec l’utilisateur root est désormais interdite.
- La sécurité de la machine est renforcée en obligeant l’usage d’un utilisateur non privilégié (cyberuser) pour toute connexion distante.
