#!/bin/bash

azul="\e[34m"
azul=""
reset="\e[0m"
reset=""

if [[ "${TERM}" == *"color"* ]]; then
  azul="\e[34m"
  reset="\e[0m"
fi

export LC_ALL="C.utf8"

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
echo -e  "${azul}Sistema operativo${reset}"
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
echo -e "${azul}Versión de kernel${reset}"
uname -r
echo ""
echo -e "${azul}Tiempo de actividad del sistema${reset}"
uptime
echo ""
echo -e "${azul}Espacio en discos${reset}"
df -h
echo""
echo -e "${azul}Detalles de los discosuand${reset}"
lsblk
echo ""
echo -e "${azul}Información de la red${reset}"
ip a
echo ""
echo -e "${azul}Conecciones de red${reset}"
ss -tuln
echo ""
echo -e "${azul}Informaci贸n del CPU${reset}"
salidaLSCPU=$(lscpu | grep -iE "Architecture|Model name")
echo "$salidaLSCPU" | cut -d ':' -f2 | sed 's/^[t ]*//g;s/[t ]*$//g' -
echo ""
echo -e "${azul}Memoria RAM${reset}"
free -h
echo ""
echo -e "${azul}Top 5 procesos por uso de CPU${reset}"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%cpu | head -n 6
echo ""
echo -e "${azul}Top 5 procesos por uso de RAM${reset}"
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head -n 6
echo ""
echo -e "${azul}Puertos abiertos${reset}"
netstat -tulpn
echo ""
echo -e "${azul}Usuarios conectados${reset}"
who