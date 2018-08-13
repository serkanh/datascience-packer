#!/bin/sh
set -x 
set -o
# required to install r server.
# https://www.digitalocean.com/community/tutorials/how-to-install-r-on-ubuntu-16-04-2
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository 'deb [arch=amd64,i386] https://cran.rstudio.com/bin/linux/ubuntu xenial/'
sudo apt-get update
sudo apt-get install -y r-base
curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
sudo python3 get-pip.py --user
sudo python3 -m pip install --upgrade pip
sudo python3 -m pip install jupyter
wget https://download2.rstudio.org/rstudio-server-1.1.456-amd64.deb
sudo dpkg -i  rstudio-server-1.1.456-amd64.deb
