FROM rust:1.80-alpine3.20
ARG CARGO_GEN_VERSION="0.21.3"
ADD https://github.com/cargo-generate/cargo-generate/releases/download/v${CARGO_GEN_VERSION}/cargo-generate-v${CARGO_GEN_VERSION}-x86_64-unknown-linux-musl.tar.gz /tmp/cargo-generate.tar.gz
RUN tar -xzvf /tmp/cargo-generate.tar.gz -C /usr/bin cargo-generate && rm /tmp/cargo-generate.tar.gz
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
