# syntax=docker/dockerfile:1
ARG RUST_VERSION=1.75.0
ARG APP_NAME=puck_server

FROM rust:${RUST_VERSION} AS build
ARG APP_NAME

RUN apt update && apt install lld clang cmake -y

ENV OUT_DIR=""
COPY ./protobuf ./protobuf

WORKDIR /app
COPY ./puck_server/migrations ./migrations
COPY ./puck_server/config.yaml ./config.yaml
COPY ./puck_server/src ./src
COPY ./puck_server/Cargo.toml ./Cargo.toml
COPY ./puck_server/Cargo.lock ./Cargo.lock
COPY ./puck_server/build.rs ./build.rs

RUN cargo build --locked --release && \
    cp ./target/release/$APP_NAME /bin/server

FROM debian:bookworm-slim AS final

ARG UID=10001
RUN adduser \
    --disabled-password \
    --gecos "" \
    --home "/nonexistent" \
    --shell "/sbin/nologin" \
    --no-create-home \
    --uid "${UID}" \
    appuser
USER appuser

COPY --from=build /bin/server /bin/
COPY ./puck_server/config.yaml config.yaml
EXPOSE 50051
CMD ["/bin/server"]
