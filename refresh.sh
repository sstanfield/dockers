#!/bin/bash

docker rmi sstanf/firefox
docker rmi sstanf/chromium
docker rmi sstanf/browsers
docker rmi sstanf/intellij
docker rmi sstanf/jdk8
docker rmi sstanf/archlinux

#docker pull base/archlinux
cd $HOME/dockers
cd archlinux && sudo ./mkimage-arch.sh && cd ..
docker build --rm --network host -t sstanf/browsers $HOME/dockers/browsers/
docker build --rm --network host -t sstanf/chromium $HOME/dockers/chromium/
docker build --rm --network host -t sstanf/firefox $HOME/dockers/firefox/
docker build --rm --network host -t sstanf/jdk8 $HOME/dockers/java/
docker build --rm --network host -t sstanf/intellij $HOME/dockers/intelliJ/
