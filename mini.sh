#!/usr/bin/env bash

cd /tmp # working directory of your choice
wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
zcat install-tl-unx.tar.gz | tar xf -
cd install-tl-*
sudo perl ./install-tl --no-interaction --scheme=small

export PATH=$PATH:/usr/local/texlive/2022/bin/x86_64-linux
echo "PATH=$PATH:/usr/local/texlive/2022/bin/x86_64-linux">>/etc/environment

tlmgr update --self --all
tlmgr install latexmk
tlmgr install imakeidx
tlmgr install reledmac
tlmgr install babel-latin
