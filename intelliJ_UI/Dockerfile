FROM sstanf/intellij
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

COPY ./ideaIU-2018.1.4-no-jdk.tar.gz /

RUN cd / && tar xvf /ideaIU-2018.1.4-no-jdk.tar.gz && \
    rm -f /ideaIU-2018.1.4-no-jdk.tar.gz

ENV LANG en_US.UTF-8

ENTRYPOINT exec /idea-IU-181.5087.20/bin/idea.sh
