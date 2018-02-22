FROM ubuntu:xenial
# FROM arm64=arm64v8/ubuntu:xenial

ENV CHECKER_VERSION v0.35

RUN apt-get update \
        && apt-get install -y --no-install-recommends binutils xz-utils \
        && rm -rf /var/lib/apt/lists/*

WORKDIR /dist
ADD https://raw.githubusercontent.com/speed47/spectre-meltdown-checker/${CHECKER_VERSION}/spectre-meltdown-checker.sh /dist/
RUN chmod +x /dist/spectre-meltdown-checker.sh
COPY entry.sh /dist/

ENTRYPOINT ["/dist/entry.sh"]
CMD ["-v"]

