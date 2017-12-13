FROM sstanf/base_devel
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

ENV _build 3859397

#COPY ./sdk-tools-linux-$_build.zip /
COPY ./sdk.list /

# Need lib32stdc++6 or some damn 32 bit lib, for ubuntu "apt-get install lib32stdc++6" might do the trick...
RUN echo "Include = /etc/pacman.d/mirrorlist" >> /etc/pacman.conf && \
    echo "[multilib]" >> /etc/pacman.conf && \
    echo "Include = /etc/pacman.d/mirrorlist" >> /etc/pacman.conf && \
    pacman --noconfirm -Suy && \
    pacman --noconfirm -S unzip wget expect lib32-gcc-libs lib32-zlib && \
    rm -f /var/cache/pacman/pkg/*

RUN cd / && wget https://dl.google.com/android/repository/sdk-tools-linux-$_build.zip
RUN mkdir /sdk && \
    cd /sdk && \
    unzip ../sdk-tools-linux-$_build.zip && \
    rm /sdk-tools-linux-$_build.zip && \
    echo -e "spawn /sdk/tools/bin/sdkmanager --package_file=/sdk.list\nexpect \"Accept? (y/N):\" {send \"y\\\\n\"}\ninteract\nwait" > /loadsdk && \
    expect /loadsdk

ENV LANG en-US

# Add sstanf user
#RUN groupadd -g 1000 -r sstanf && useradd -u 1000 -r -g sstanf sstanf \
#&& mkdir -p /home/sstanf && chown -R sstanf:sstanf /home/sstanf

