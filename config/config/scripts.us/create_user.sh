#!/bin/bash
#S'indica una variable dintre del script i li donem nom de l'usuari i contrasenya donat en la varible d'entorn
user=$USER
pwd=$PASSWORD

# Comprovació si l'usuari existeix o no 
ret=false
getent passwd $user >/dev/null 2>&1 && ret=true
# En cas de algún misstge ho envia a /dev/null

if $ret; then
echo "user already exists";
else

#Creant l'usuari
useradd $user -d /data/$user
echo "${user}:${pwd}" | chpasswd
# Donant-li permisos de administrador al usuari afegint-ho a sudoers
echo "${user}  ALL=(ALL)  NOPASSWD: ALL" > /etc/sudoers.d/$user
echo "user created"
fi
