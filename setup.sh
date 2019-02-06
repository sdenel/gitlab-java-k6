#!/bin/sh
set -e

apt-get update && apt install -y gnupg2 ca-certificates
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 379CE192D401AB61
echo "deb https://dl.bintray.com/loadimpact/deb stable main" | tee -a /etc/apt/sources.list
apt-get update
apt-get install -y k6 maven
