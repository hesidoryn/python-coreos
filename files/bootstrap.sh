#!/bin/bash
VERSIONS=${VERSIONS:-"2.7.8.10"}

cd /usr

sudo wget http://downloads.activestate.com/ActivePython/releases/${VERSIONS}/ActivePython-${VERSIONS}-linux-x86_64.tar.gz
sudo tar -xzvf ActivePython-${VERSIONS}-linux-x86_64.tar.gz

sudo mv ActivePython-${VERSIONS}-linux-x86_64 apy && cd apy && sudo ./install.sh -I /usr/python/

sudo ln -s /usr/python/bin/easy_install /usr/bin/easy_install
sudo ln -s /usr/python/bin/pip /usr/bin/pip
sudo ln -s /usr/python/bin/python /usr/bin/python
sudo ln -s /usr/python/bin/virtualenv /usr/bin/virtualenv

/usr/bin/pip install docker-py==1.8.1
