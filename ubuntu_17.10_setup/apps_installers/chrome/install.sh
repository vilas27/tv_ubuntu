#!/bin/bash
echo =======================================================================
echo            Unbunt 17.10 Automatic installation of Chrome
echo 		        Tiago Vilas -- vilas_33@hotmail.com	
echo =======================================================================

echo =======================================================================
echo 			       		  Installing Chrome
echo =======================================================================

wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -

echo 'deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main' | sudo tee /etc/apt/sources.list.d/google-chrome.list

sudo apt-get -y update 

sudo apt-get -y install google-chrome-stable

echo =======================================================================
echo 			   		 Finish Chrome installation
echo =======================================================================