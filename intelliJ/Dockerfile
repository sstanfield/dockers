FROM sstanf/flutter
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

RUN pacman --noconfirm -Suy && \
    pacman --noconfirm -S dart intellij-idea-community-edition ttf-inconsolata && \
    rm -f /var/cache/pacman/pkg/*

ENV LANG en-US

