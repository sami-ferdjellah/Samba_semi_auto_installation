# Samba_semi_auto_installation

# based on this guide
# https://ubuntu.com/tutorials/install-and-configure-samba#1-overview

sudo apt update
sudo apt install samba

# check if install went well
whereis samba
#output should be
usr/share/man/man8/samba.8.gz

#create a directory
mkdir /home/<username>/sambashare/

# modification du fichier de configuration
nano /etc/samba/smb.conf

# [sambashare]
#   comment = Samba on Ubuntu
#    path = /home/username/sambashare
#    read only = no
#    browsable = yes

# redemaragae de samba 
sudo service smbd restart

# modification du firewall
sudo ufw allow samba

# creation du pwd
sudo smbpasswd -a username
