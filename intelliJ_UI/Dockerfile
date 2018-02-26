FROM sstanf/intellij
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

COPY ./ideaIU-2017.3.4.tar.gz /

RUN cd / && tar xvf /ideaIU-2017.3.4.tar.gz && \
    rm -f /ideaIU-2017.3.4.tar.gz

ENV LANG en_US.UTF-8

ENTRYPOINT exec /idea-IU-173.4548.28/bin/idea.sh
