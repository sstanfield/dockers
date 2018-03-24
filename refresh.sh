#!/bin/bash

#docker rmi sstanf/flutter_website
docker rmi sstanf/subsurface
docker rmi sstanf/firefox
#docker rmi sstanf/firefox_dev
docker rmi sstanf/chromium
docker rmi sstanf/browsers
docker rmi sstanf/intellij_ui
docker rmi sstanf/intellij
docker rmi sstanf/flutter
docker rmi sstanf/react_native
docker rmi sstanf/android_sdk
docker rmi sstanf/base_devel
docker rmi sstanf/jdk8
docker rmi sstanf/archlinux

#docker pull base/archlinux
cd $HOME/dockers
cd archlinux && sudo ./mkimage-arch.sh && cd ..
docker build --rm --network host -t sstanf/browsers $HOME/dockers/browsers/
docker build --rm --network host -t sstanf/chromium $HOME/dockers/chromium/
docker build --rm --network host -t sstanf/firefox $HOME/dockers/firefox/
#docker build --rm --network host -t sstanf/firefox_dev $HOME/dockers/firefox_dev/
docker build --rm --network host -t sstanf/subsurface $HOME/dockers/subsurface/
docker build --rm --network host -t sstanf/jdk8 $HOME/dockers/jdk8/
docker build --rm --network host -t sstanf/base_devel $HOME/dockers/base_devel/
docker build --rm --network host -t sstanf/android_sdk $HOME/dockers/android_sdk/
docker build --rm --network host -t sstanf/flutter $HOME/dockers/flutter/
docker build --rm --network host -t sstanf/react_native $HOME/dockers/react_native/
docker build --rm --network host -t sstanf/intellij $HOME/dockers/intelliJ/
docker build --rm --network host -t sstanf/intellij_ui $HOME/dockers/intelliJ_UI/
#docker build --rm --network host -t sstanf/flutter_website $HOME/dockers/flutter_website/
