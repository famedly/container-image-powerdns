FROM docker.io/alpine:3.14
ARG VERSION
RUN apk --no-cache add \
    pdns=${VERSION} \
    pdns-backend-pgsql \
    pdns-tools

CMD ["/usr/sbin/pdns_server"]

