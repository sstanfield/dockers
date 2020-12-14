FROM sstanf/browsers
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

RUN mkdir /home/browser/perm && \
    mkdir -p /home/browser/.mozilla/firefox/default/

#COPY local-settings.js /usr/lib/firefox/defaults/pref/
#COPY mozilla.cfg /usr/lib/firefox/
#COPY profiles.ini /home/browser/.mozilla/firefox/

RUN chown -R browser:browser /home/browser/

USER browser


ENTRYPOINT [ "/sbin/firefox" ]
