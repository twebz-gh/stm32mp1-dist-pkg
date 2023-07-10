FROM ubuntu:22.04

RUN apt-get install -y \
        aptitude \
        dos2unix \
        git \
        subversion \
        sudo \
        tree \
        vim \
        zip \
    && apt-get clean

# Configure wheel/sudoers.
RUN sed -i "s/^%sudo.*/%sudo     ALL=(ALL:ALL)    NOPASSWD:ALL/" /etc/sudoers

ARG user
RUN useradd --create-home --groups sudo $user

USER $user
RUN mkdir -p /home/$user/.ssh

USER root
RUN chown -R $user:$user /home/$user

COPY files/OpenSTLinux.tar /tmp
RUN tar --no-same-permissions -C / -xf /tmp/OpenSTLinux.tar \
    && chown -R $user:$user /OpenSTLinux \
    && chmod u+x /OpenSTLinux/layers/openembedded-core/scripts/oe-setup-builddir \
    && chmod u+x /OpenSTLinux/layers/openembedded-core/bitbake/bin/bitbake

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ=America/New_York
RUN apt-get install -y \
        bsdmainutils \
        build-essential \
        chrpath \
        cpio \
        diffstat \
        file \
        gawk \
        gcc-multilib \
        iputils-ping \
        libegl1-mesa \
        libgmp-dev \
        libmpc-dev \
        libsdl1.2-dev \
        libssl-dev \
        locales \
        lz4 \
        pylint \
        python3 \
        python3-git \
        python3-jinja2 \
        python3-pexpect \
        python3-pip \
        socat \
        texinfo \
        wget \
        xterm \
        zstd \
    && locale-gen en_US.UTF-8 \
    && update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8 \
    && apt-get clean
    
