FROM sstanf/intellij
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

COPY ./ideaIU-2018.1.5.tar.gz /

RUN cd / && tar xvf /ideaIU-2018.1.5.tar.gz && \
    rm -f /ideaIU-2018.1.5.tar.gz

ENV LANG en_US.UTF-8

ENTRYPOINT exec /idea-IU-181.5281.24/bin/idea.sh
