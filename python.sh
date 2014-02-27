#!/bin/bash

# Setup Python development environments
# Tested on Fedora 20

# Install dependent packages
yum groupinstall -y "Development Tools"
yum install -y python-devel python-pip
yum install -y zlib-devel bzip2 bzip2-devel readline-devel sqlite sqlite-devel

# Install pyenv
curl https://raw.github.com/yyuu/pyenv-installer/master/bin/pyenv-installer | bash

# Configure environment
echo '# pyenv' >> ~/.bash_profile
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bash_profile
echo 'export PATH="$PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(pyenv init -)"' >> ~/.bash_profile

# Install virtualenv(wrapper)
pip install virtualenv virtualenvwrapper
source /usr/bin/virtualenvwrapper.sh
echo 'source /usr/bin/virtualenvwrapper.sh' >> ~/.bashrc

