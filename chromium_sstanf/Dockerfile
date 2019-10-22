FROM sstanf/browsers
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

# Add sstanf user
RUN groupadd -g 1000 -r sstanf && useradd -u 1000 -r -g sstanf -G audio,video sstanf \
&& mkdir -p /home/sstanf/Downloads && chown -R sstanf:sstanf /home/sstanf

USER sstanf

ENTRYPOINT [ "/sbin/chromium" ]
