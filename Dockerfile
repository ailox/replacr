FROM docker.io/library/busybox:1.36-musl

USER nobody
WORKDIR /home/tag-files

COPY tag-files/* .

CMD ["/bin/sh", "-c", "grep -v '^#' *"]
