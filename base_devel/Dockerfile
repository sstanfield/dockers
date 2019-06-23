FROM sstanf/jdk8
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

RUN pacman --noconfirm -Suy && \
    pacman --noconfirm -S git base-devel dart python ruby cmake libx11 libjpeg-turbo libpng freetype2 maven gradle openssh clang mesa xorg-xrandr xorg-server-devel libxinerama libxcursor glu xsel go go-tools musl tk kak-lsp && \
    rm -f /var/cache/pacman/pkg/*


ENV LANG en_US.UTF-8

#USER sstanf

WORKDIR /home/sstanf

ENTRYPOINT exec /sbin/bash
