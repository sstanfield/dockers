FROM sstanf/archlinux
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

ENV pkgver 2.3.3.0
ENV _build 162.4069837

COPY ./android-studio-ide-$_build-linux.zip /

RUN pacman --noconfirm -Suy && \
    pacman --noconfirm -S alsa-lib freetype2 libxrender libxtst ttf-inconsolata git unzip wget cmake && \
    rm -f /var/cache/pacman/pkg/* && \
    #wget https://dl.google.com/dl/android/studio/ide-zips/$pkgver/android-studio-ide-$_build-linux.zip && \
    unzip android-studio-ide-$_build-linux.zip && \
    rm android-studio-ide-$_build-linux.zip && \
    cd android-studio

ENV LANG en-US

# Add sstanf user
RUN groupadd -g 1000 -r sstanf && useradd -u 1000 -r -g sstanf sstanf \
&& mkdir -p /home/sstanf && chown -R sstanf:sstanf /home/sstanf

