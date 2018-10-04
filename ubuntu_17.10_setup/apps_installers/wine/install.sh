#!/bin/bash

echo =======================================================================
echo 			Unbunt 17.10 Automatic installation of Wine
echo 				Tiago Vilas -- vilas_33@hotmail.com	
echo =======================================================================

echo =======================================================================
echo 							Installing Wine
echo =======================================================================

sudo dpkg --add-architecture i386 

wget -nc https://dl.winehq.org/wine-builds/Release.key

sudo apt-key add Release.key

sudo apt-add-repository https://dl.winehq.org/wine-builds/ubuntu/

sudo apt-get update

sudo apt-get -y install --install-recommends winehq-stable

echo =======================================================================
echo 						Finish Wine installation
echo =======================================================================

echo =======================================================================
echo 						Installing Winetricks
echo =======================================================================

sudo apt-get -y install winetricks

echo =======================================================================
echo 					Finish Winetricks installation
echo =======================================================================