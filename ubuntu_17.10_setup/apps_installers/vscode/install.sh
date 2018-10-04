#!/bin/bash
echo =======================================================================
echo 	 Unbunt 17.10 Automatic installation of vscode and extensions
echo 		    Tiago Vilas -- vilas_33@hotmail.com	
echo =======================================================================
echo =======================================================================
echo "List of contents:
        VSCode,
        Plugins
        {
            C/C++
            {
                --> C/C++ -- ext install ms-vscode.cpptools,
                --> cpp-pack -- ext install jewsofhazard.cpp-pack
                    {
                        C++ Intellisense,
                        CPP Tools,
                        Code Runner,
                        C++ Snippets,
                        CMake Tools
                    }
            },
            Node
            {
                --> Node.js REPL -- ext install lostfields.nodejs-repl
                --> Node.js Extension Pack -- ext install waderyan.nodejs-extension-pack
                    {
                        Javascript
                        {
                            ESLint,
                            Javascript (ES6) code snippets
                        },
                        npm
                        {
                            npm,
                            npm Intellisense
                        },
                        Search node_modules,
                        Path Intellisense
                    }
            },
            npm
            {
                --> NPM Dependency Links -- ext install herrmannplatz.npm-dependency-links
            },
            Markdown
            {
                --> Markdown Extension Pack -- ext install bat67.markdown-extension-pack
                    {
                        Markdown All in One,
                        markdownlint,
                        Markdown PDF,
                        Markdown+Math,
                        Markdown Preview Enhanced,
                        Markdown TOC
                    }
            },
            Git
            {
                --> Git Extension Pack -- ext install donjayamanne.git-extension-pack
                    {
                        Git
                        {
                            Git Lens,
                            Git History (git log),
                            Open in GitHub / Bitbucket / Gitlab / VisualStudio.com !,
                            gitignore
                        },
                        Project Manager
                    }
                --> Git Blame -- ext install waderyan.gitblame
            },
            Docker
            {
                --> Docker Extension Pack -- ext install formulahendry.docker-extension-pack
                    {
                        Docker,
                        Docker Explorer
                    }
            },
            Console
            {
                --> PowerShell -- ext install ms-vscode.PowerShell
            },
            Others
            {
                --> Code Runner -- ext install formulahendry.code-runner,
                --> Code Spell Checker -- ext install streetsidesoftware.code-spell-checker
            }
        }"
echo =======================================================================

echo =======================================================================
echo 			       		  Installing VSCode
echo =======================================================================

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg

sudo mv microsoft.gpg /etc/apt/trusted.gpg.d/microsoft.gpg

sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt-get update

sudo apt-get -y install code

xdg-mime default code.desktop text/plain

echo =======================================================================
echo 			   		 Finish VSCode installation
echo =======================================================================

echo =======================================================================
echo 			       		  Installing C/C++
echo =======================================================================

code --install-extension ms-vscode.cpptools

echo =======================================================================
echo 			   		 Finish C/C++ installation
echo =======================================================================

echo =======================================================================
echo 			       	   Installing cpp-pack
echo =======================================================================

code --install-extension jewsofhazard.cpp-pack

echo =======================================================================
echo 			   	    Finish cpp-pack installation
echo =======================================================================

echo =======================================================================
echo 			       		Installing Node.js REPL
echo =======================================================================

code --install-extension lostfields.nodejs-repl

echo =======================================================================
echo 			   	    Finish Node.js REPL installation
echo =======================================================================

echo =======================================================================
echo 			       Installing Node.js Extension Pack
echo =======================================================================

code --install-extension waderyan.nodejs-extension-pack

echo =======================================================================
echo 			   Finish Node.js Extension Pack installation
echo =======================================================================

echo =======================================================================
echo 			        Installing NPM Dependency Links
echo =======================================================================

code --install-extension herrmannplatz.npm-dependency-links

echo =======================================================================
echo 			   	Finish NPM Dependency Links installation
echo =======================================================================

echo =======================================================================
echo 			       Installing Markdown Extension Pack
echo =======================================================================

code --install-extension bat67.markdown-extension-pack

echo =======================================================================
echo 			   Finish Markdown Extension Pack installation
echo =======================================================================

echo =======================================================================
echo 			       	Installing Git Extension Pack
echo =======================================================================

code --install-extension donjayamanne.git-extension-pack

echo =======================================================================
echo 			   	Finish Git Extension Pack installation
echo =======================================================================

echo =======================================================================
echo 			       	    Installing Git Blame
echo =======================================================================

code --install-extension waderyan.gitblame

echo =======================================================================
echo 			   	    Finish Git Blame installation
echo =======================================================================

echo =======================================================================
echo 			       Installing Docker Extension Pack
echo =======================================================================

code --install-extension formulahendry.docker-extension-pack

echo =======================================================================
echo 			   Finish Docker Extension Pack installation
echo =======================================================================

echo =======================================================================
echo 			       		Installing PowerShell 
echo =======================================================================

code --install-extension ms-vscode.PowerShell

echo =======================================================================
echo 			   		Finish PowerShell installation
echo =======================================================================

echo =======================================================================
echo 			       		Installing Code Runner
echo =======================================================================

code --install-extension formulahendry.code-runner

echo =======================================================================
echo 			   	    Finish Code Runner installation
echo =======================================================================

echo =======================================================================
echo 			       	Installing Code Spell Checker
echo =======================================================================

code --install-extension streetsidesoftware.code-spell-checker

echo =======================================================================
echo 			   	Finish Code Spell Checker installation
echo =======================================================================