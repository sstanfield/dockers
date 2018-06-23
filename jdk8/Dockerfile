FROM sstanf/archlinux
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

# The pacman with font stuff is so dumb things like jasper reports will work...
RUN pacman --noconfirm -Suy && \
    pacman --noconfirm -S jdk8-openjdk git zip unzip openssh && \
    pacman --noconfirm -S libxrender libxtst freetype2 fontconfig noto-fonts && \
    rm -f /var/cache/pacman/pkg/*

ENV LANG en-US

# Add sstanf user
RUN groupadd -g 1000 -r sstanf && useradd -u 1000 -r -g sstanf sstanf \
&& mkdir -p /home/sstanf && chown -R sstanf:sstanf /home/sstanf

