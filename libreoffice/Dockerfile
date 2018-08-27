FROM sstanf/jdk8
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

RUN pacman --noconfirm -Suy && \
    pacman --noconfirm -S gtk3 hunspell hunspell-en_US hyphen hyphen-en libmythes mythes-en noto-fonts libreoffice-fresh && \
    rm -f /var/cache/pacman/pkg/*

ENV LANG en-US.UTF-8

# Add sstanf user
#RUN groupadd -g 1000 -r sstanf && useradd -u 1000 -r -g sstanf sstanf \
#&& mkdir -p /home/sstanf && chown -R sstanf:sstanf /home/sstanf

