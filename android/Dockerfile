FROM sstanf/base_devel

LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

# Need lib32stdc++6 or some damn 32 bit lib, for ubuntu "apt-get install lib32stdc++6" might do the trick...
RUN echo "Include = /etc/pacman.d/mirrorlist" >> /etc/pacman.conf && \
    echo "[multilib]" >> /etc/pacman.conf && \
    echo "Include = /etc/pacman.d/mirrorlist" >> /etc/pacman.conf && \
    pacman --noconfirm -Suy && \
    pacman --noconfirm -S unzip wget expect lib32-gcc-libs lib32-zlib ttf-hack code && \
    rm -f /var/cache/pacman/pkg/*

ENV LANG en-US

