#!/bin/bash

echo =================================================================================
echo                          Configure Docker Remote API
echo =================================================================================

sudo cp docker-tcp.socket /etc/systemd/system/

systemctl enable docker-tcp.socket

systemctl enable docker.socket

systemctl stop docker

systemctl start docker-tcp.socket

systemctl start docker

docker -H tcp://127.0.0.1:4243 ps

echo =================================================================================
echo                      Finish Docker Remote API configuration
echo =================================================================================
