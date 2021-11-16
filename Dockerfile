FROM docker.io/alpine:edge
ARG VERSION
RUN apk --no-cache add \
    pdns=${VERSION} \
    pdns-backend-pgsql \
    pdns-tools

CMD ["/usr/sbin/pdns_server"]

