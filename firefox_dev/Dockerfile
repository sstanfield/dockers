FROM sstanf/browsers
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

ENV _name firefox
ENV _channel developer
ENV _srcurl "https://download-installer.cdn.mozilla.net/pub/devedition/releases"
ENV _locale "en-US"
ENV pkgver 57.0b14
ENV CARCH x86_64

RUN curl $_srcurl/$pkgver/linux-$CARCH/$_locale/$_name-$pkgver.tar.bz2 > firefox.tar.bz2

RUN tar xvjf firefox.tar.bz2

USER browser

ENTRYPOINT [ "/firefox/firefox" ]
