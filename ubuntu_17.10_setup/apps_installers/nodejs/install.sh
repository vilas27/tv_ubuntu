#!/bin/bash
echo =======================================================================
echo            Unbunt 17.10 Automatic installation of Nodejs
echo 		        Tiago Vilas -- vilas_33@hotmail.com	
echo =======================================================================

echo =======================================================================
echo 			       		  Installing Nodejs
echo =======================================================================

curl -sL https://deb.nodesource.com/setup_9.x | sudo -E bash -

sudo apt-get -y install nodejs

echo =======================================================================
echo 			   		 Finish Nodejs installation
echo =======================================================================