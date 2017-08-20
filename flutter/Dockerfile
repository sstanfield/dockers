FROM sstanf/android_sdk
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

# Need lib32stdc++6 or some damn 32 bit lib, for ubuntu "apt-get install lib32stdc++6" might do the trick...
RUN echo "[multilib]" >> /etc/pacman.conf && \
    echo "Include = /etc/pacman.d/mirrorlist" >> /etc/pacman.conf && \
    pacman --noconfirm -Suy && \
    pacman --noconfirm -S lib32-gcc-libs && \
    rm -f /var/cache/pacman/pkg/*

RUN wget https://services.gradle.org/distributions/gradle-3.5.1-bin.zip && \
    unzip gradle-3.5.1-bin.zip && \
    rm gradle-3.5.1-bin.zip

RUN git clone -b alpha https://github.com/flutter/flutter.git

RUN export ANDROID_HOME=/sdk && \
    export PATH=/flutter/bin:$PATH && \
    flutter doctor && \
    chown -R sstanf:sstanf /flutter

#RUN chown -R sstanf:sstanf /sdk

RUN echo "export PATH=/flutter/bin:$PATH" >> /home/sstanf/.local && \
    echo "export ANDROID_HOME=/sdk" >> /home/sstanf/.local && \
    echo "flutter config --gradle-dir=/gradle-3.5.1" >> /home/sstanf/.local && \
    echo ". /home/sstanf/.local" >> /home/sstanf/.bashrc

ENV LANG en-US

# Add sstanf user
#RUN groupadd -g 1000 -r sstanf && useradd -u 1000 -r -g sstanf sstanf \
#&& mkdir -p /home/sstanf && chown -R sstanf:sstanf /home/sstanf

