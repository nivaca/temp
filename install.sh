#!/usr/bin/env sh
sudo apt update
sudo apt upgrade -y
sudo apt install -y wget curl git
sudo apt install -y libfontconfig1-dev libgraphite2-dev libharfbuzz-dev libicu-dev libssl-dev zlib1g-dev
sudo apt install -y libxml2-dev libxslt-dev python3 python3-pip

cd /tmp # working directory of your choice
wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
zcat install-tl-unx.tar.gz | tar xf -
cd install-tl-*
sudo perl ./install-tl --no-interaction --scheme=small

export PATH=$PATH:/usr/local/texlive/2022/bin/X86_65-linux

tlmgr update --self --all
tlmgr install latexmk
tlmgr install imakeidx
tlmgr install reledmac
