#!/usr/bin/env bash
echo 'Deployment in progress'
pwd && cd target

if (( $(ps -ef | grep -v grep | grep grizzlystore-configserver | wc -l) > 0)) 
	then
		echo "Configuration Server is running...attempting to stop service!"
		sudo systemctl stop grizzlystore-configserver.service || true
fi

if [ -f grizzlystore-configserver ] ; then
    sudo rm /etc/init.d/grizzlystore-configserver || true
fi

cp *.jar /opt/GrizzlyStoreMicroServices/grizzlystore-configserver.jar
sudo systemctl start grizzlystore-configserver.service