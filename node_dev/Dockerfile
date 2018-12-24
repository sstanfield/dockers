FROM sstanf/base_devel
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

RUN pacman --noconfirm -Suy && \
    pacman --noconfirm -S npm nodejs && \
    rm -f /var/cache/pacman/pkg/*

RUN npm install -g typescript && \
    npm install -g firebase-tools

#RUN echo "export ANDROID_HOME=/sdk" >> /home/sstanf/.local && \
#    echo "export PATH=$PATH:/sdk/tools:/sdk/platform-tools" >> /home/sstanf/.local && \
#    echo ". /home/sstanf/.local" >> /home/sstanf/.bashrc

ENV LANG en-US

# Add sstanf user
#RUN groupadd -g 1000 -r sstanf && useradd -u 1000 -r -g sstanf sstanf \
#&& mkdir -p /home/sstanf && chown -R sstanf:sstanf /home/sstanf

