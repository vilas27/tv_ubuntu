#!/bin/bash
echo =======================================================================
echo            Unbunt 17.10 Automatic installation of Docker
echo 		        Tiago Vilas -- vilas_33@hotmail.com	
echo =======================================================================

echo =======================================================================
echo "List of contents:
        Docker,
        Docker Compose,
        Docker Machine"
echo =======================================================================

echo =======================================================================
echo 			       		  Installing Docker
echo =======================================================================

sudo apt-get -y install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
	
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update

sudo apt-get -y --allow-unauthenticated install docker-ce

sudo groupadd docker

sudo usermod -aG docker $USER

docker --version

echo =======================================================================
echo 			   		 Finish Docker installation
echo =======================================================================

echo =======================================================================
echo 			       	Installing Docker Compose
echo =======================================================================

sudo curl -L https://github.com/docker/compose/releases/download/1.18.0/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

docker-compose --version

echo =======================================================================
echo 			   	Finish Docker Compose installation
echo =======================================================================

echo =======================================================================
echo 			       	Installing Docker Machine
echo =======================================================================

sudo curl -L https://github.com/docker/machine/releases/download/v0.13.0/docker-machine-`uname -s`-`uname -m` >/tmp/docker-machine

sudo install /tmp/docker-machine /usr/local/bin/docker-machine

scripts=( docker-machine-prompt.bash docker-machine-wrapper.bash docker-machine.bash ); for i in "${scripts[@]}"; do sudo wget https://raw.githubusercontent.com/docker/machine/v0.13.0/contrib/completion/bash/${i} -P /etc/bash_completion.d; done

PS1='[\u@\h \W$(__docker_machine_ps1)]\$ '

docker-machine version

echo =======================================================================
echo 			   	Finish Docker Machine installation
echo =======================================================================