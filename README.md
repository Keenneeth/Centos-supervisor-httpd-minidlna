# CentOS amb supervisor configurat per funcionar amb httpd-minidlna
Centos amb dos serveis Apache i Minidlna

## Docker run :

Indicar ports : 
- Apache per defecte el 80
- Minidlna per defecte el 8200
- Supervisor per defecte el 9001

## Usuari :

Hi ha dues variables d'entorn per tal de configurar l'usuari i contrasenya :

- Username per defecte : docker 
- Password per defecte : root

## Directoris de configuració que s'han afegit :

- config : scripts de configuració de l'usuari i contrasenya i iniciar el funcionament del supervisor.
- etc : fitxer de configuració del minidlna, amb la configuració del supervisor.
- multimedia : media_dir del servidor DLNA on el servidor va a buscar el fitxers multimedia.
- sbin : demoni pel funcionament del minidlna.
- Document root del apache per tal de que el servidor web tingui una web.

## Exemple docker run :

docker run -itd -p 80:8080 -p 8200:8200 -p 9001:9001 -e USER=keenneeth -e PASSWORD=espinal keenneeth/centos-supervisor-httpd-minidlna

## Keenneeth
### docker pull keenneeth/centos-supervisor-httpd-minidlna
