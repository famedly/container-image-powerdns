FROM docker.io/alpine:3.15
ARG VERSION
RUN apk --no-cache add \
    pdns=${VERSION} \
    pdns-backend-pgsql=${VERSION} \
    pdns-tools \
    libcap

RUN setcap 'cap_net_bind_service=+eip' /usr/sbin/pdns_server

CMD ["/usr/sbin/pdns_server"]

