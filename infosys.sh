azul="\e[34m"
reset="\e[0m"

echo " _        __                     "
echo "(_)      / _|                    "
echo " _ _ __ | |_ ___  ___ _   _ ___  "
echo "| | '_ \|  _/ _ \/ __| | | / __| "
echo "| | | | | || (_) \__ \ |_| \__ \ "
echo "|_|_| |_|_| \___/|___/\__, |___/ "
echo "                       __/ |     "
echo "                      |___/      "
echo ""
echo "       Hecho por ivaeiro"

echo ""
echo  "${azul}Sistema operativo${reset}"
uname -a
echo ""
echo "${azul}Distribución de Linux${reset}"
if command -v lsb_release &> /dev/null
then
	lsb_release -a
else
	echo "El comando lsb_release no esta disponible"
fi
echo ""
echo "${azul}Versión de kernel${reset}"
uname -r
echo ""
echo "${azul}Tiempo de actividad del sistema${reset}"
uptime
echo ""
echo "${azul}Espacio en discos${reset}"
df -h
echo""
echo "${azul}Detalles de los discosuand${reset}"
lsblk
echo ""
echo "${azul}Información de la red${reset}"
ip a
echo ""
echo "${azul}Conecciones de red${reset}"
ss -tuln
echo ""
echo "${azul}Información del CPU${reset}"
lscpu | grep "Nombre del modelo"
lscpu | grep "Arquitectura"
echo ""
echo "${azul}Memoria RAM${reset}"
free -h
echo ""
echo "${azul}Top 5 procesos por uso de CPU${reset}"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6
echo ""
echo "${azul}Top 5 procesos por uso de RAM${reset}"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6
echo ""
echo "${azul}Puertos abiertos${reset}"
netstat -tulpn
echo ""
echo "${azul}Usuarios conectados${reset}"
who
echo ""
echo "${azul}${reset}"