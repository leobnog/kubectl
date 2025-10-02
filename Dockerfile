FROM alpine:3.18

# Instala kubectl e ferramentas úteis
RUN apk add --no-cache \
    kubectl \
    && rm -rf /var/cache/apk/*