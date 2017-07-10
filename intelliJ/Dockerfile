FROM sstanf/jdk8
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

RUN pacman --noconfirm -Suy && \
    pacman --noconfirm -S intellij-idea-community-edition ttf-inconsolata && \
    rm -f /var/cache/pacman/pkg/*

ENV LANG en-US

