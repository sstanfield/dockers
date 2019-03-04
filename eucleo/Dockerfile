FROM sstanf/browsers
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

COPY ./zoom_x86_64.pkg.tar.xz /

RUN cd / && pacman -U --noconfirm /zoom_x86_64.pkg.tar.xz && \
    rm -f /zoom_x86_64.pkg.tar.xz

USER browser

ENTRYPOINT [ "/sbin/chromium" ]
