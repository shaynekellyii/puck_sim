# puck_sim

## gRPC client

### Regenerating Dart protobuf client

```zsh
cd /path/to/puck_sim/puck_client
protoc --dart_out=grpc:lib/src/generated -I=../protobuf/ ../protobuf/api.proto
```
