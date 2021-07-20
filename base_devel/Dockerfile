FROM sstanf/archlinux
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

RUN pacman --noconfirm -Suy && \
    pacman --noconfirm -S jdk11-openjdk git git-lfs zip unzip base-devel dart python ruby cmake libx11 libjpeg-turbo libpng freetype2 maven gradle openssh clang mesa xorg-xrandr xorg-server-devel libxinerama libxcursor glu xsel go go-tools musl tk kak-lsp fzf ripgrep fd bat jq rlwrap clojure sbcl guile bash-completion emacs perf rust-analyzer libevdev boost doxygen mono psmisc ttf-hack && \
    # The pacman with font stuff is so dumb things like jasper reports will work...
    #pacman --noconfirm -S libxrender libxtst freetype2 fontconfig noto-fonts && \
    rm -f /var/cache/pacman/pkg/*

ENV LANG en_US.UTF-8

# Add sstanf user
RUN groupadd -g 1000 -r sstanf && useradd -u 1000 -r -g sstanf sstanf \
&& mkdir -p /home/sstanf && chown -R sstanf:sstanf /home/sstanf

#Will break some stuff that extends this container.
#USER sstanf

WORKDIR /home/sstanf

ENTRYPOINT exec /sbin/bash
