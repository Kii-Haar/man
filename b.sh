#!/bin/sh

a=$(ifconfig | awk 'NR == 2 {print $2}' | grep -E -o '192\.168\.(25[0-5]|2[0-4][0-9]|[0-1]?[0-9][0-9]?)\.(25[0-5]|2[0-4][0-9]|[0-1]?[0-9][0-9]?)')

b="/storage/emulated/0/"

if [ $a != "" ]; then
	if [ -w $b ]; then
		if [ -d $b/share ]; then
		if [ -f $b/share/index.php ]; then
		rm -rf $b/share/index.php
		fi
		echo "\n\nSilakan Buka link $a:8080 di Browser Anda\n\n"
		cp c.php $b/share/index.php
		cd $b/share/
		php -S $a:8080
		break
		else
		mkdir $b/share/
		echo "\n\n Silakan Buka Link $a:8080 di Browser Anda\n\n"
		cp c.php $b/share/index.php
		cd $b/share/
		php -S $a:8080
		break
		fi
	else
	sleep 2
	echo "\n\nJalankan perintah\n\n     $ termux-setup-storage\n\nKemudian Silakan Jalankan Ulang Script \n\n"
	break
	fi

else
echo "silakan koneksikan ke wifi atau buka hotspot"
break
fi


