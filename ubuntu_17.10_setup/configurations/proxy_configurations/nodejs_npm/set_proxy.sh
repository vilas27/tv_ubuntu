#!/bin/bash

# npm config set proxy http://proxy.company.com:8080
# npm config set https-proxy http://proxy.company.com:8080

echo =======================================================================
echo                   Configuring Node.js and npm proxy
echo =======================================================================

npm config set proxy <http_proxy_address>
npm config set https-proxy <https_proxy_address>

echo =======================================================================
echo               Finish Node.js and npm proxy configuration
echo =======================================================================