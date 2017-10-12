FROM sstanf/archlinux
LABEL maintainer "Steven Stanfield <sls@scarecrowtech.com>"

RUN pacman --noconfirm -Suy && \
    pacman --noconfirm -S ruby git && \
    rm -f /var/cache/pacman/pkg/*

# Add sstanf user
RUN groupadd -g 1000 -r sstanf && useradd -u 1000 -r -g sstanf sstanf \
&& mkdir -p /home/sstanf && chown -R sstanf:sstanf /home/sstanf

RUN pacman --noconfirm -S base-devel

RUN su - sstanf -c "git clone https://github.com/flutter/website.git"

#RUN su - sstanf -c "export PATH=$(ruby -e 'print Gem.user_dir')/bin:$PATH && export GEM_HOME=$(ruby -e 'print Gem.user_dir') && gem install bundler && cd website && bundle install"
RUN su - sstanf -c "export PATH=/home/sstanf/.gem/ruby/2.4.0/bin:$PATH && export GEM_HOME=/home/sstanf/.gem/ruby/2.4.0 && gem install bundler && cd website && bundle install"

ENV LANG en_US.UTF-8

USER sstanf

WORKDIR /home/sstanf/website

ENTRYPOINT exec /home/sstanf/.gem/ruby/2.4.0/bin/jekyll serve -w --force_polling
