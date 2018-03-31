FROM sstanf/base_devel
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

#RUN pacman --noconfirm -Suy && \
#    pacman --noconfirm -S git base-devel dart python ruby cmake libx11 libjpeg-turbo libpng freetype2 maven gradle openssh clang mesa xorg-xrandr xorg-server-devel libxinerama libxcursor glu xsel && \
#    rm -f /var/cache/pacman/pkg/*

RUN pacman --noconfirm -Suy && \
    pacman --noconfirm -S noto-fonts ttf-inconsolata && \
    rm -f /var/cache/pacman/pkg/* && \
    git clone https://aur.archlinux.org/neovim-gtk.git && \
    echo "sstanf ALL=(ALL) NOPASSWD: /sbin/pacman" >> /etc/sudoers && \
    echo "sstanf ALL=(ALL) NOPASSWD: /sbin/rm -f /var/cache/pacman/pkg/*" >> /etc/sudoers && \
    chown -R sstanf:sstanf neovim-gtk/

USER sstanf

RUN cd neovim-gtk && \
    makepkg -si --noconfirm --rmdeps && \
    sudo rm -f /var/cache/pacman/pkg/*


ENV LANG en_US.UTF-8


WORKDIR /home/sstanf

ENTRYPOINT exec /sbin/bash
