FROM sstanf/browsers
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

RUN pacman --noconfirm -Suy && \
    pacman --noconfirm -S subsurface bluez bluez-utils && \
    rm -f /var/cache/pacman/pkg/*

ENV LANG en-US.UTF-8

# Add browser user
RUN groupadd -g 1000 -r sstanf && useradd -u 1000 -r -g sstanf sstanf \
&& mkdir -p /home/sstanf && chown -R sstanf:sstanf /home/sstanf

USER sstanf

ENTRYPOINT [ "/usr/bin/subsurface" ]
