FROM caddy:builder-alpine AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/infomaniak

FROM caddy:alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

