#!/bin/bash

echo -e "Iniciando configuracao..."

sudo su

sudo cp ./i2c_hid.conf /etc/modprob.d/

sudo depmod -ae

sudo update-initramfs -u

sudo su -c "echo synaptics_i2c >> /etc/modules"

echo -e "Configuracao finalizada, necessario reiniciar sistema"
echo -e "Deseja reiniciar agora:(s/n)"
read resp

if [[$resp = 's' || $resp = 'S']]
then
	echo -e "Reiniciando sistema..."
	sleep 2
	sudo reboot

elif [[$resp = 'n' || $resp = 'N']]
	
	exit
fi
