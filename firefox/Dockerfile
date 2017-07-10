FROM sstanf/browsers
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

USER browser

RUN mkdir /home/browser/perm && \
    mkdir -p /home/browser/.mozilla/firefox/default/

COPY profiles.ini /home/browser/.mozilla/firefox/

ENTRYPOINT [ "/sbin/firefox" ]
