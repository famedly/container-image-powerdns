FROM docker.io/alpine:3.15
ARG VERSION
RUN apk --no-cache add \
    pdns=${VERSION} \
    pdns-backend-pgsql=${VERSION} \
    pdns-tools

CMD ["/usr/sbin/pdns_server"]

