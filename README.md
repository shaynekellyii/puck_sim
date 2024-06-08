# puck_sim

A full stack multiplayer hockey GM game. Leverages Rust, Flutter, gRPC, and Docker.

## Run the stack locally

### Prerequisites

* Install Docker.

### Deploying

```zsh
docker-compose up
```

## gRPC client

### Regenerating Dart protobuf client

```zsh
cd /path/to/puck_sim/puck_client
protoc --dart_out=grpc:lib/src/generated -I=../protobuf/ ../protobuf/api.proto
```
