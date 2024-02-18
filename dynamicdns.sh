#!/usr/bin/env zsh

# Info: Script para la actualización de dominios o subdominios hacia hosts de IP dinámica.
# https://support.cdmon.com/entries/24118056-API-de-actualización-de-IP-del-DNS-gratis-dinámico

USER=""
PASS="98765432198765432198765432198765"   # md5: rnd
HOST="sub.domain.tld"                     # host
IP=`curl http://api.ipify.org`            # client ip

curl "https://dinamico.cdmon.org/onlineService.php?enctype=MD5&n=$USER&p=$PASS&cip=$IP";
