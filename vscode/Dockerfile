FROM sstanf/node_dev
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

RUN pacman --noconfirm -Suy && \
    pacman --noconfirm -S libxtst libxss gtk2 gconf libnotify alsa-lib ttf-inconsolata code && \
    pacman --noconfirm -S ttf-hack otf-fira-mono otf-fira-code adobe-source-code-pro-fonts && \
    rm -f /var/cache/pacman/pkg/*

ENV LANG en_US.UTF-8

ENTRYPOINT exec /usr/bin/code
