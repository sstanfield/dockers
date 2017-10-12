FROM sstanf/archlinux
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

RUN pacman --noconfirm -Suy && \
    pacman --noconfirm -S jdk8-openjdk git zip unzip openssh && \
    rm -f /var/cache/pacman/pkg/*

ENV LANG en-US

# Add sstanf user
RUN groupadd -g 1000 -r sstanf && useradd -u 1000 -r -g sstanf sstanf \
&& mkdir -p /home/sstanf && chown -R sstanf:sstanf /home/sstanf

