#!/bin/bash

mkdir ~/rpmbuild
cd ~/rpmbuild
mkdir BUILD RPMS SOURCES SPEC SRPMS
git clone https://github.com/nils-ohlmeier/sipsak.git /sipsak
cd /sipsak
autoreconf -vfi
./configure
make dist
mv sipsak-0.9.7pre.tar.gz ~/rpmbuild/SOURCES
mv /sipsak.spec ~/rpmbuild/SPEC
cd ~/rpmbuild
rpmbuild -ba SPEC/sipsak.spec 
