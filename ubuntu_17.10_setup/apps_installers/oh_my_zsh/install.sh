#!/bin/bash
echo =======================================================================
echo 	 Unbunt 17.10 Automatic installation of Oh My ZSH
echo 		    Tiago Vilas -- vilas_33@hotmail.com	
echo =======================================================================

echo =======================================================================
echo 			       		  Installing Oh My ZSH
echo =======================================================================

sudo apt-get -y install zsh

wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

chsh -s `which zsh`

echo =======================================================================
echo 			   		 Finish Oh My ZSH installation
echo =======================================================================