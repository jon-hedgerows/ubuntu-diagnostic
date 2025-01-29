FROM ubuntu:noble

RUN apt-get -yqq update ; \
    apt-get -yqq install inetutils-ping bind9-dnsutils vim curl wget;

CMD ["/bin/bash", "-c", "while true; do date ; sleep 60 ; done"]
