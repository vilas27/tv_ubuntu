#!/bin/bash

echo =======================================================================
echo                      Configuring Docker proxy
echo =======================================================================

sudo mkdir -p /etc/systemd/system/docker.service.d

sudo cp docker.service.d/http-proxy.conf /etc/systemd/system/docker.service.d/http-proxy.conf

sudo cp docker.service.d/https-proxy.conf /etc/systemd/system/docker.service.d/https-proxy.conf

sudo systemctl daemon-reload

sudo systemctl restart docker

systemctl show --property=Environment docker

echo =======================================================================
echo                  Finish Docker proxy configuration
echo =======================================================================