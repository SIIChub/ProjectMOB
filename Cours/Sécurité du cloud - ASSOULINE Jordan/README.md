# ProjectMOB la team des Hackers SIIC !

Commandes pour ProxMox


# Création d'un container 
<pre><code>pct create 101 local:vztmpl/debian-6.0-standard_6.0-7_amd64.tar.gz --hostname ct-web01 --storage local-lvm --net0 name=eth0,bridge=vmbr0,ip=dhcp</code></pre>

# Demarrer un container
<pre><code>pct start 101</code></pre>

# Entrer en mode console
<pre><code>pct enter 102</code></pre>

# Lister les containers (pct) et les vm (qm)
<pre><code>pct list</code></pre>
<pre><code>qm list</code></pre>

# Création d'un snapshot  
<pre><code>vzdump 105 --mode snapshot</code></pre>

# Restauration d'un snapshot
<pre><code>pct restore 106 local:vztmpl/debian-6.0-standard_6.0-7_amd64.tar.gz --storage local-lvm </code></pre>

# Mettre à jour les templates disponibles
<pre><code>pveam update</code></pre>

# Lister la liste des templates disponible
<pre><code>pveam available</code></pre>

# Lister la liste des templates 
<pre><code>pveam list local</code></pre>

# Ajouter des templates
* **debian** <pre><code>pveam download local debian-8.0-standard_8.0-1_amd64.tar.gz</code></pre>
* **ubuntu** <pre><code>pveam download local ubuntu-12.04-standard_12.04-1_amd64.tar.gz</code></pre>

# Création VM avec XP
<pre><code>qm create 103 --cdrom /var/lib/vz/template/iso/fr_windows_xp_pro.iso --memory 512 --ostype wxp --storage local-lvm --kvm 0 --name VM-XP --bootdisk ide0 --onboot no --sockets 1 --ide0 local-lvm:10 --net0 rtl8139,bridge=vmbr0</code></pre>

# Destruction d'un VM
<pre><code>qm destroy 103</code></pre>


# A Faire 

CT-WEB01
* APACHE2
* PHPMYADMIN
* MYSQL
* SSH

CT-FTP
* proftpd
* SSH

VM-WINXP

CT-UBUNTU12.0.4 


--------------------------------------------

# Key Windows XP

<code>FPQY3-DHHHJ-XGWRK-TW8KY-3GFX6</code>

<img src"https://gigaom.com/wp-content/uploads/sites/1/2013/07/hacker-cyber-attack-640x522.jpg"/>
