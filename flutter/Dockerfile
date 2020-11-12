FROM sstanf/android_sdk
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

RUN wget https://services.gradle.org/distributions/gradle-3.5.1-bin.zip && \
    unzip gradle-3.5.1-bin.zip && \
    rm gradle-3.5.1-bin.zip

RUN cd / && git clone -b stable https://github.com/flutter/flutter.git

RUN export ANDROID_HOME=/sdk && \
    export PATH=/flutter/bin:$PATH && \
    flutter doctor && \
    chown -R sstanf:sstanf /flutter

#RUN chown -R sstanf:sstanf /sdk

RUN echo "export PATH=/flutter/bin:$PATH" >> /home/sstanf/.local && \
    echo "export ANDROID_HOME=/sdk" >> /home/sstanf/.local && \
    echo "flutter config --gradle-dir=/gradle-3.5.1" >> /home/sstanf/.local && \
    echo ". /home/sstanf/.local" >> /home/sstanf/.bashrc

RUN pacman --noconfirm -Suy && \
    pacman --noconfirm -S ttf-inconsolata code && \
    rm -f /var/cache/pacman/pkg/*

ENV LANG en-US

# Add sstanf user
#RUN groupadd -g 1000 -r sstanf && useradd -u 1000 -r -g sstanf sstanf \
#&& mkdir -p /home/sstanf && chown -R sstanf:sstanf /home/sstanf

