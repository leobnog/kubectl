FROM alpine:3.18
RUN apk add --no-cache kubectl bash curl git
CMD ["/bin/bash"]