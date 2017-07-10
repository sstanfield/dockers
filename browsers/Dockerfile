FROM sstanf/archlinux
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

RUN pacman --noconfirm -Suy && \
    pacman --noconfirm -S firefox chromium && \
    rm -f /var/cache/pacman/pkg/*

ENV LANG en-US

# Add browser user
RUN groupadd -g 2001 -r browser && useradd -u 2001 -r -g browser -G audio,video browser \
&& mkdir -p /home/browser/Downloads && chown -R browser:browser /home/browser

