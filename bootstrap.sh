#!/usr/bin/env bash

# update package repository lists
sudo apt-get update

# install pandoc if not already present
if ! [ -f "/usr/bin/pandoc" ]
then
  sudo apt-get install -y haskell-platform
  cd /home/team43
  wget https://github.com/jgm/pandoc/releases/download/1.15.0.6/pandoc-1.15.0.6-1-amd64.deb
  sudo dpkg -i /home/team43/pandoc-1.15.0.6-1-amd64.deb
  sudo apt-get install -f
  rm pandoc-1.15.0.6-1-amd64.deb
fi

if ! [ -f "/usr/local/texlive/2015/bin/x86_64-linux/tex" ]
then
  cd /home/team43
  wget http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
  tar xvfz install-tl-unx.tar.gz
  cd install-tl*
  wget https://raw.githubusercontent.com/phillip-hopper/Team43VM/master/door43_texlive.profile
  sudo ./install-tl --profile=door43_texlive.profile

  cd /home/team43
  echo '' >> .profile
  echo 'export PATH="/usr/local/texlive/2015/bin/x86_64-linux:$PATH"' >> .profile
fi

if ! [ -f "/usr/share/fonts/google-noto/NotoSans-Regular.ttf" ]
then
  sudo mkdir -m=0775 -p /usr/share/fonts/google-noto
  wget https://noto-website.storage.googleapis.com/pkgs/Noto-hinted.zip
  sudo unzip Noto-hinted.zip -d /usr/share/fonts/google-noto
  rm Noto-hinted.zip
fi

sudo apt-get -y dist-upgrade
