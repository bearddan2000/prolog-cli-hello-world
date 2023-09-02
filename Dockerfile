FROM ubuntu:latest

WORKDIR /workspace

COPY bin .

RUN apt update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends swi-prolog

ENTRYPOINT ["swipl", "-q", "-l"]

CMD ["main.pl"]