FROM base/archlinux
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

COPY mirrorlist /etc/pacman.d/

RUN pacman --noconfirm -Suy && \
    pacman --noconfirm -S sed which grep tmux neovim && \
    rm -f /var/cache/pacman/pkg/*

RUN echo 'en_US.UTF-8 UTF-8' > /etc/locale.gen && \
    echo 'LANG=en_US.UTF-8' > /etc/locale.conf && \
    /usr/sbin/locale-gen

ENV LANG en-US

