FROM sstanf/base_devel
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

#COPY mirrorlist /etc/pacman.d/

RUN pacman --noconfirm -Suy && \
    pacman --noconfirm -S python2 python2-virtualenv docker && \
    rm -f /var/cache/pacman/pkg/*


ENV LANG en_US.UTF-8

#USER sstanf

WORKDIR /home/sstanf

ENTRYPOINT exec /sbin/bash
