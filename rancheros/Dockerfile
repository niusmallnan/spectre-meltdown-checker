FROM ubuntu:xenial
# FROM arm64=arm64v8/ubuntu:xenial

#ENV CHECKER_VERSION v0.36

RUN apt-get update \
        && apt-get install -y --no-install-recommends binutils xz-utils \
        && rm -rf /var/lib/apt/lists/*

WORKDIR /dist
COPY spectre-meltdown-checker.sh /dist/
COPY entry.sh /dist/

ENTRYPOINT ["/dist/entry.sh"]
CMD ["-v"]

