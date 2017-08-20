FROM sstanf/jdk8
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

ENV _build 3859397

COPY ./sdk-tools-linux-$_build.zip /
COPY ./sdk.list /

RUN pacman --noconfirm -Suy && \
    pacman --noconfirm -S git unzip wget cmake expect && \
    rm -f /var/cache/pacman/pkg/*

#RUN #wget https://dl.google.com/android/repository/sdk-tools-linux-$_build.zip && \
RUN mkdir sdk && \
    cd sdk && \
    unzip ../sdk-tools-linux-$_build.zip && \
    rm /sdk-tools-linux-$_build.zip && \
    echo -e "spawn /sdk/tools/bin/sdkmanager --package_file=/sdk.list\nexpect \"Accept? (y/N):\" {send \"y\\\\n\"}\ninteract\nwait" > /loadsdk && \
    expect /loadsdk

ENV LANG en-US

# Add sstanf user
#RUN groupadd -g 1000 -r sstanf && useradd -u 1000 -r -g sstanf sstanf \
#&& mkdir -p /home/sstanf && chown -R sstanf:sstanf /home/sstanf

