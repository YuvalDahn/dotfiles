#!/bin/bash

ver=0.12.1

wget https://github.com/sharkdp/bat/releases/download/v$ver/bat-v$ver-x86_64-unknown-linux-musl.tar.gz

tar xzf bat-v$ver-x86_64-unknown-linux-musl.tar.gz
cd bat-v$ver-x86_64-unknown-linux-musl/

install -Dvm755 --target-directory /usr/local/bin/ bat
install -Dvm644 --target-directory /usr/local/share/doc/bat/ LICENSE-APACHE LICENSE-MIT README.md
install -Dvm644 --target-directory /usr/local/share/man/man1/ bat.1

cd ..
rm -rf bat-v$ver-x86_64-unknown-linux-musl/ bat-v$ver-x86_64-unknown-linux-musl.tar.gz
