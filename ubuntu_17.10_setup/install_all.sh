#!/bin/bash

echo =======================================================================
echo 	 			Unbunt 17.10 Automatic installation
echo 		    	Tiago Vilas -- vilas_33@hotmail.com	
echo =======================================================================
echo =======================================================================
echo "List of contents:
		Environment (applications, development tools),
		Libraries"
echo =======================================================================

echo =======================================================================
echo 				   		Inatalling Environment
echo =======================================================================

./install_environment.sh

echo =======================================================================
echo 				    Finish Environment installation
echo =======================================================================

echo =======================================================================
echo 				   		Inatalling Libraries
echo =======================================================================

./install_libs.sh

echo =======================================================================
echo 				    Finish Libraries installation
echo =======================================================================

echo =======================================================================
echo 				   	Inatalling Manual Applications
echo =======================================================================

./install_manual_apps.sh

echo =======================================================================
echo 				  Finish Manual Applications installation
echo =======================================================================
