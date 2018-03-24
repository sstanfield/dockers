FROM sstanf/browsers
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

USER browser

RUN mkdir /home/browser/perm && \
    mkdir -p /home/browser/.mozilla/firefox/default/

COPY local-settings.js /usr/lib/firefox/defaults/pref/
COPY mozilla.cfg /usr/lib/firefox/
COPY profiles.ini /home/browser/.mozilla/firefox/

ENTRYPOINT [ "/sbin/firefox" ]
