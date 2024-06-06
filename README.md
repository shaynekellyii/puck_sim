# puck_sim

## gRPC client

### Regenerating Dart protobuf client

```zsh
cd /path/to/puck_sim
protoc --dart_out=grpc:puck_client/lib/src/generated -Iprotos protobuf/api.proto
```
