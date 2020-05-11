FROM ubuntu:18.04

# Install package dependencies
RUN apt-get update && apt-get install -y --no-install-recommends \
        build-essential \
        autoconf \
        automake \
        libtool \
        pkg-config \
        ca-certificates \
        wget \
        git \
        curl \
        libjpeg-dev \
        libpng-dev \
        language-pack-en \
        locales \
        locales-all \
        python3 \
        python3-dev \
        python3-pip \
        python3-setuptools \
        libprotobuf-dev \
        protobuf-compiler \
        cmake \
        zlib1g-dev \
        swig \
        vim \
        zip \
        unzip 
RUN apt-get clean

# System locale
# Important for UTF-8
ENV LC_ALL en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

RUN cd /usr/local/bin && \
    ln -s /usr/bin/python3 python && \
    ln -s /usr/bin/pip3 pip && \
    pip install --upgrade pip setuptools

RUN pip install pip install jinja2==2.11.2 markupsafe==1.1.1 boto3==1.13.7