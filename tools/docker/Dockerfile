FROM ubuntu:18.04

RUN apt-get update && \
    apt-get install --no-install-recommends --assume-yes \
        curl \
        gpg-agent \
        python3-pip \
        python3-setuptools \
        python3-wheel \
        software-properties-common && \
    rm -rf /var/lib/apt/lists/*

# https://docs.openvinotoolkit.org/latest/_docs_install_guides_installing_openvino_docker_linux.html
ARG OPENVINO_VERSION=2019.3.376
RUN curl -fsSL https://apt.repos.intel.com/intel-gpg-keys/GPG-PUB-KEY-INTEL-SW-PRODUCTS-2019.PUB | \
    apt-key add - && \
    echo "deb https://apt.repos.intel.com/openvino/2019/ all main" > \
         /etc/apt/sources.list.d/intel-openvino-2019.list && \
    apt-get update && \
    apt-get install --no-install-recommends --assume-yes \
        intel-openvino-dev-ubuntu18-${OPENVINO_VERSION} \
        intel-openvino-runtime-ubuntu18-${OPENVINO_VERSION} && \
    rm -rf /var/lib/apt/lists/*

COPY requirements.txt requirements.txt
RUN pip3 install --requirement requirements.txt
