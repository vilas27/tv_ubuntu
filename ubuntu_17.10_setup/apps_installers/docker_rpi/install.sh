#!/bin/bash
echo =======================================================================
echo      Unbunt 17.10 Automatic installation of Docker on Raspberry Pi 
echo 		        Tiago Vilas -- vilas_33@hotmail.com	
echo =======================================================================

echo =======================================================================
echo 			       		  Installing Docker
echo =======================================================================

curl -sSL https://get.docker.com | sh

sudo groupadd docker

sudo usermod -aG docker $USER

echo =======================================================================
echo 			   		 Finish Docker installation
echo =======================================================================