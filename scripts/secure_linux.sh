#!/bin/bash
sudo apt update && sudo apt upgrade -y
sudo apt install ufw fail2ban -y
sudo ufw allow OpenSSH
sudo ufw enable
sudo sed -i 's/^PermitRootLogin.*/PermitRootLogin no/' /etc/ssh/sshd_config
sudo systemctl restart ssh
sudo systemctl enable fail2ban
sudo systemctl start fail2ban
echo "Sécurisation terminée !"

