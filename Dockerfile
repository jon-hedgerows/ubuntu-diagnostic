FROM ubuntu:noble

RUN apt-get -yqq update ; \
    apt-get -yqq install \
    inetutils-ping \
    bind9-dnsutils \
    iproute2 \
    vim \
    curl \
    wget \
    python3-full; \
    apt-get autoremove; \
    apt-get autoclean;

CMD ["/bin/bash", "-c", "while true; do date ; sleep 60 ; done"]
