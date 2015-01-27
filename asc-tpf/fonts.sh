#!/bin/bash

# Enable better font rendering for Fedora

# Install Infinality
rpm -Uvh http://www.infinality.net/fedora/linux/infinality-repo-1.0-1.noarch.rpm
yum -y install freetype-infinality fontconfig-infinality libXft-infinality 

# Install fonts
yum -y install wqy-microhei-fonts 

# Install Microsfot TrueType fonts
if [ "$1" = "msttcorefonts" ]
then
    yum -y install rpm-build cabextract ttmkfdir
    wget http://corefonts.sourceforge.net/msttcorefonts-2.5-1.spec
    rpmbuild -bb msttcorefonts-2.5-1.spec
    rpm -ivh $HOME/rpmbuild/RPMS/noarch/msttcorefonts-2.5-1.noarch.rpm
    fc-cache -f -v
fi
