#!/bin/bash

docker rmi sstanf/firefox
docker rmi sstanf/firefox_dev
docker rmi sstanf/chromium
docker rmi sstanf/browsers

cd $HOME/dockers
docker build --rm --network host -t sstanf/browsers $HOME/dockers/browsers/
docker build --rm --network host -t sstanf/chromium $HOME/dockers/chromium/
docker build --rm --network host -t sstanf/firefox $HOME/dockers/firefox/
docker build --rm --network host -t sstanf/firefox_dev $HOME/dockers/firefox_dev/
