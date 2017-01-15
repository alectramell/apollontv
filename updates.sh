#!/bin/bash

clear

USERNAME=$(whoami)
WHEREAMI=$(pwd)

clear

XPASS=$(zenity --title="$USERNAME" --password --no-cancel)

clear

REQ1=$(which notify-send)
REQ2=$(which mplayer)
REQ3=$(which youtube-dl)
REQ4=$(which iwgetid)
REQ5=$(which grep)
REQ6=$(which wget)

clear

if [ $REQ1 = "/usr/bin/notify-send" ]
then
	clear
	echo "REQ1=true"
else
	clear
	echo "$XPASS" | sudo -S apt-get install -y notify-send
	clear
fi

clear

if [ $REQ2 = "/usr/bin/mplayer" ]
then
	clear
	echo "REQ2=true"
else
	clear
	echo "$XPASS" | sudo -S apt-get install -y mplayer
	clear
fi

clear

if [ $REQ3 = "/usr/bin/youtube-dl" ]
then
	clear
	echo "REQ3=true"
else
	clear
	echo "$XPASS" | sudo -S apt-get install -y youtube-dl
	clear
fi

clear

if [ $REQ4 = "/sbin/iwgetid" ]
then
	clear
	echo "REQ4=true"
else
	clear
	echo "$XPASS" | sudo -S apt-get install -y iwgetid
	clear
fi

clear

if [ $REQ5 = "/bin/grep" ]
then
	clear
	echo "REQ5=true"
else
	clear
	echo "$XPASS" | sudo -S apt-get install -y grep
	clear
fi

clear

if [ $REQ6 = "/usr/bin/wget" ]
then
	clear
	echo "REQ6=true"
else
	clear
	echo "$XPASS" | sudo -S apt-get install -y wget
	clear
fi

clear
