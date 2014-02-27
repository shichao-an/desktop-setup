#!/bin/bash

# Enable better font rendering for Fedora

# Install Infinality
rpm -Uvh http://www.infinality.net/fedora/linux/infinality-repo-1.0-1.noarch.rpm
yum -y install freetype-infinality fontconfig-infinality libXft-infinality 

# Install fonts
yum -y install wqy-microhei-fonts 
