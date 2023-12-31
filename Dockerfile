FROM docker.io/alpine:3.19
ARG VERSION
RUN apk --no-cache add bash
SHELL ["/bin/bash", "-c"]
RUN apk --no-cache add \
    pdns=${VERSION#v} \
    pdns-backend-pgsql=${VERSION#v} \
    pdns-tools \
    libcap

RUN setcap 'cap_net_bind_service=+eip' /usr/sbin/pdns_server

CMD ["/usr/sbin/pdns_server"]

