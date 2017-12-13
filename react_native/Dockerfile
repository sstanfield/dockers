FROM sstanf/android_sdk
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

RUN pacman --noconfirm -Suy && \
    pacman --noconfirm -S nodejs npm && \
    rm -f /var/cache/pacman/pkg/*

RUN useradd builduser -m && \
    passwd -d builduser && \
    printf 'builduser ALL=(ALL) ALL\n' | tee -a /etc/sudoers && \
    sudo -u builduser bash -c 'cd ~ && git clone https://aur.archlinux.org/watchman.git && cd watchman && makepkg -si --noconfirm'

RUN npm install -g npm@4

RUN npm install -g create-react-native-app && \
    npm install -g react-native-cli

RUN echo "export ANDROID_HOME=/sdk" >> /home/sstanf/.local && \
    echo "export PATH=$PATH:/sdk/tools:/sdk/platform-tools" >> /home/sstanf/.local && \
    echo ". /home/sstanf/.local" >> /home/sstanf/.bashrc

ENV LANG en-US

# Add sstanf user
#RUN groupadd -g 1000 -r sstanf && useradd -u 1000 -r -g sstanf sstanf \
#&& mkdir -p /home/sstanf && chown -R sstanf:sstanf /home/sstanf

