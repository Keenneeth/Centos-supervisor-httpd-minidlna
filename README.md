# CentOS amb supervisor configurat per funcionar amb httpd-minidlna
Centos amb dos serveis Apache i Minidlna

## Docker run :

Indicar ports : 
Apache per defecte el 80
Minidlna per defecte el 8200
Supervisor per defecte el 9001

## Usuari :

Hi ha dues variables d'entorn per tal de configurar l'usuari i contrasenya :

username per defecte : docker 
password per defecte : root

## Directoris de configuració que s'han afegit :

- config : scripts de configuració de l'usuari i contrasenya i iniciar el funcionament del supervisor.
- etc : fitxer de configuració del minidlna, amb la configuració del supervisor.
- multimedia : media_dir del servidor DLNA on el servidor va a buscar el fitxers multimedia.
- sbin : demoni pel funcionament del minidlna.
- Document root del apache per tal de que el servidor web tingui una web.

## Keenneeth
### docker pull : docker pull keenneeth/centos-supervisor-httpd-minidlna
