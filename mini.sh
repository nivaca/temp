#!/usr/bin/env bash

cd /tmp # working directory of your choice
wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
zcat install-tl-unx.tar.gz | tar xf -
cd install-tl-*
sudo perl ./install-tl --no-interaction --scheme=basic # vs. small

export PATH=$PATH:/usr/local/texlive/2022/bin/X86_64-linux

tlmgr update --self --all
tlmgr install latexmk
tlmgr install imakeidx
tlmgr install reledmac
tlmgr install babel-latin
