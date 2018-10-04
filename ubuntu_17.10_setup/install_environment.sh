#!/bin/bash

echo =======================================================================
echo 	   Unbunt 17.10 Automatic installation of the work environment
echo 		         Tiago Vilas -- vilas_33@hotmail.com	
echo =======================================================================
echo =======================================================================
echo "List of contents:
		Update,
		Upgrade,
		Synaptic,
		ntpdate,
		Net-Tools
		Tweak,
		Git core,
		Oh my zsh,
		Chrome,
		Java jdk,
		Java jre,
		Curl,
		Vscode,
		Audacity,
		PSI,
		Docker,
		gconf2,
		Node.js / npm,
		ssh Server

	Missing (manual installation): 
		Smartcvs,
		Kitematic (working),
		MongoDB Compass (working),
		Eclipse,
		Slack,
		Eclipse -- plugins:
		{
			ANSI Escape in Console
		}"
echo =======================================================================

echo =======================================================================
echo 				   			  Update
echo =======================================================================

sudo apt-get -y update

echo =======================================================================
echo 						   Finish update
echo =======================================================================

echo =======================================================================
echo 				   			 Upgrade
echo =======================================================================

sudo apt-get -y upgrade

echo =======================================================================
echo 			        	  Finish upgrade 
echo =======================================================================


echo =======================================================================
echo                           Install ntpdate
echo =======================================================================

sudo apt-get install ntpdate

echo =======================================================================
echo                     Finish ntpdate installation
echo =======================================================================

echo =======================================================================
echo 			      		Installing Tweak
echo =======================================================================

sudo add-apt-repository -y ppa:trebelnik-stefina/ubuntu-tweak

sudo apt-get -y update

sudo apt-get -y install ubuntu-tweak

echo =======================================================================
echo 			 		Finish Tweak installation
echo =======================================================================

echo =======================================================================
echo 			      		Installing Net-Tools
echo =======================================================================

sudo apt-get -y install net-tools

echo =======================================================================
echo 			 		Finish Net-Tools installation
echo =======================================================================

echo =======================================================================
echo 			      		Installing Synaptic
echo =======================================================================

sudo apt-get -y install synaptic

echo =======================================================================
echo 			 		Finish Synaptic installation
echo =======================================================================


echo =======================================================================
echo 			 		Give root access to display
echo =======================================================================

xhost +si:localuser:root

echo =======================================================================
echo 			       		  Installing Git
echo =======================================================================

sudo apt-get -y install git-core

echo =======================================================================
echo 			   		 Finish Git installation
echo =======================================================================

echo =======================================================================
echo 			    	  Installing Oh my zsh
echo =======================================================================

./apps_installers/oh_my_zsh/install.sh

echo =======================================================================
echo 			  	  Finish Oh my zsh installation
echo =======================================================================

echo =======================================================================
echo 						 Intalling Chrome
echo =======================================================================

./apps_installers/chrome/install.sh

echo =======================================================================
echo 					 Finish Chrome installation
echo =======================================================================

echo =======================================================================
echo 			    		Installing Java jdk
echo =======================================================================

sudo apt-get install -y openjdk-9-jdk 

echo =======================================================================
echo 			  		Finish Java jdk installation
echo =======================================================================

echo =======================================================================
echo 		 	       		Installing Java jre
echo =======================================================================

sudo apt-get install -y openjdk-9-jre

echo =======================================================================
echo 			  	   Finish Java jre installation
echo =======================================================================

echo =======================================================================
echo 			      		 Intalling Curl
echo =======================================================================

sudo apt-get -y install curl

echo =======================================================================
echo 			    	Finish Curl installation
echo =======================================================================

echo =======================================================================
echo 			      	    Intalling Vscode
echo =======================================================================

./apps_installers/vscode/install.sh

echo =======================================================================
echo 			    	  Finish Vscode installation
echo =======================================================================

echo =======================================================================
echo 			      		 Intalling Audacity
echo =======================================================================

sudo apt-get -y install audacity 

echo =======================================================================
echo 			    	Finish Audacity installation
echo =======================================================================

echo =======================================================================
echo 			      		 Intalling PSI
echo =======================================================================

sudo apt-get -y install psi

echo =======================================================================
echo 			    	Finish PSI installation
echo =======================================================================

echo =======================================================================
echo 			      		 Intalling Docker
echo =======================================================================

./apps_installers/docker/install.sh

echo =======================================================================
echo 			    	Finish Docker installation
echo =======================================================================

echo =======================================================================
echo 			      		 Intalling gconf2
echo =======================================================================

sudo apt-get -y install gconf2 

echo =======================================================================
echo 			    	Finish gconf2 installation
echo =======================================================================

echo =======================================================================
echo 			      		 Intalling Node.js
echo =======================================================================

./apps_installers/nodejs/install.sh

echo =======================================================================
echo 			    	Finish Node.js installation
echo =======================================================================

echo =======================================================================
echo 			      		Intalling ssh Server
echo =======================================================================

sudo apt-get -y install openssh-server 

echo =======================================================================
echo 			    	Finish ssh Server installation
echo =======================================================================
