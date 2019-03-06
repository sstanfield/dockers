FROM sstanf/base_devel

LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

#ENV _build 3859397
ENV _build 4333796

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
    /sdk/tools/bin/sdkmanager --verbose --update && \
    echo y | /sdk/tools/bin/sdkmanager --verbose "extras;google;m2repository" && \
    #echo -e "spawn /sdk/tools/bin/sdkmanager --verbose \"extras;google;m2repository\"\nexpect \"Accept? (y/N):\" {send \"y\\\\r\\\\n\"}\ninteract\nwait" > /loadsdk && \
    #expect /loadsdk && \
    /sdk/tools/bin/sdkmanager --verbose "build-tools;28.0.3" && \
    /sdk/tools/bin/sdkmanager --verbose "build-tools;27.0.3" && \
    /sdk/tools/bin/sdkmanager --verbose "patcher;v4" && \
    /sdk/tools/bin/sdkmanager --verbose "platform-tools" && \
    /sdk/tools/bin/sdkmanager --verbose "platforms;android-28" && \
    /sdk/tools/bin/sdkmanager --verbose "platforms;android-27" && \
    /sdk/tools/bin/sdkmanager --verbose "platforms;android-26" && \
    /sdk/tools/bin/sdkmanager --verbose "platforms;android-25" && \
    /sdk/tools/bin/sdkmanager --verbose "tools" && \
    /sdk/tools/bin/sdkmanager --verbose "extras;android;m2repository" && \
    /sdk/tools/bin/sdkmanager --verbose "extras;m2repository;com;android;support;constraint;constraint-layout-solver;1.0.2" && \
    /sdk/tools/bin/sdkmanager --verbose "extras;m2repository;com;android;support;constraint;constraint-layout;1.0.2"

ENV LANG en-US

# Add sstanf user
#RUN groupadd -g 1000 -r sstanf && useradd -u 1000 -r -g sstanf sstanf \
#&& mkdir -p /home/sstanf && chown -R sstanf:sstanf /home/sstanf

