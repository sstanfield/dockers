FROM sstanf/intellij
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

COPY ./ideaIU-2018.2.tar.gz /

RUN cd / && tar xvf /ideaIU-2018.2.tar.gz && \
    rm -f /ideaIU-2018.2.tar.gz

ENV LANG en_US.UTF-8

ENTRYPOINT exec /idea-IU-182.3684.101/bin/idea.sh
