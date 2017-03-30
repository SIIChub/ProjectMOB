﻿# ProjectMOB la team des Hackers SIIC !

Commandes pour ProxMox


# Création d'un container 
pct create 101 local:vztmpl/debian-6.0-standard_6.0-7_amd64.tar.gz --hostname ct-web01 --storage local-lvm --net0 name=eth0,bridge=vmbr0,ip=dhcp

# Demmarré un container
pct start 101

# Entrer en mode console
pct enter 102

# Lister les pct et qm
pct list  FREE WORLD 
qm list   WORLD

# Création d'une snapshot  
vzdump 105 --mode snapshot

# Restauration d'une snapshot
pct restore 106 local:vztmpl/debian-6.0-standard_6.0-7_amd64.tar.gz --storage local-lvm 

# Mettre à jour les templates disponibles
pveam update

# Lister la liste des templates disponible
pveam available

# Lister la liste des temlates 
pveam list local

# Ajouter des templates
pveam download local debian-8.0-standard_8.0-1_amd64.tar.gz        # debian-8
pveam download local ubuntu-12.04-standard_12.04-1_amd64.tar.gz    # ubuntu-12

# Création VM avec XP
qm create 103 --cdrom /var/lib/vz/template/iso/fr_windows_xp_pro.iso --memory 512 --ostype wxp --storage local-lvm --kvm 0 --name VM-XP --bootdisk ide0 --onboot no --sockets 1 --ide0 local-lvm:10 --net0 rtl8139,bridge=vmbr0

# Destruction d'un VM
qm destroy 103


A Faire 
CT-WEB01
-APACHE2
-PHPMYADMIN
-MYSQL
-ssH

CT-FTP
-proftpd
-ssh

VM-WINXP

CT-UBUNTU12.0.4 


--------------------------------------------

# Key Windows XP

FPQY3-DHHHJ-XGWRK-TW8KY-3GFX6
