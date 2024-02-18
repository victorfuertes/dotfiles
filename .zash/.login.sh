# TTY login tasks, IP show and log, maybe an archey or an screenfetch... (i prefer clean)

# Bloque IPs.
#
# IP_LOC=$(awk '/inet / && $2 != "127.0.0.1"{print $2}' <(ifconfig))
# echo $fg[white]"    IP Local:" "$IP_LOC"
echo "\n\n"
IP_EXT=$(curl -ks http://api.ipify.org)
echo $fg[white]"  IP Externa:" "$IP_EXT"
IP_LAN=$(ipconfig getifaddr en0)
echo $fg[white]"    IP Local:" "$IP_LAN\n"
echo "\n"
FECHA=`date '+%d-%m-%Y %H:%M:%S'`
echo "$FECHA ~ $IP_LAN @ $IP_EXT" >> .iplog

# archey II screenfetch
