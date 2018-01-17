FROM sstanf/intellij
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

COPY ./ideaIU-2017.3.3.tar.gz /

RUN cd / && tar xvf /ideaIU-2017.3.3.tar.gz && \
    rm -f /ideaIU-2017.3.3.tar.gz

ENV LANG en_US.UTF-8

ENTRYPOINT exec /idea-IU-173.4301.25/bin/idea.sh
