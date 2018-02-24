#!/bin/bash

set -e
set -u

#Indicar l'arxiu de configuració del supervisord en una variable :
SUPERVISOR_PARAMS='-c /etc/supervisord.conf'

#Crear directoris dels logs i donar-li permisos
mkdir -p /data/conf /data/run /data/logs
chmod 711 /data/conf /data/run /data/logs

#Condicio per tal d'iniciar els scripts de configuració de l'imatge :
#Script de crear usuari i credencials pel supervisor

if [ "$(ls /config/scripts.us/)" ]; then
	for init in /config/scripts.us/*.sh; do
		.$init
	done
fi

# Si el contenidor s'executa de manera interactiva donar-li un terminal 
if test -t 0; then
  supervisord $SUPERVISOR_PARAMS
  # Executar bash
  if [[ $@ ]]; then 
    eval $@
  else 
    export PS1='[\u@\h : \w]\$ '
    /bin/bash
  fi

# Si el contenidor s'executa en primer pla
else
  if [[ $@ ]]; then 
    eval $@
  fi
  supervisord -n $SUPERVISOR_PARAMS
fi
