FROM alpine:3.18

# Instala kubectl e ferramentas úteis
RUN apk add --no-cache \
    curl \
    ca-certificates

RUN curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    chmod +x kubectl && \
    mv kubectl /usr/local/bin/ && \
    rm -rf /var/cache/apk/*

CMD ["/bin/sh"]
