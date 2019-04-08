#!/bin/bash

git clone https://github.com/nils-ohlmeier/sipsak.git
cd /sipsak
autoreconf -vfi
./configure --prefix=/opt/sipsak
make
make install
