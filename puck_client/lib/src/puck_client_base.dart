import 'package:grpc/grpc.dart';
import 'package:puck_client/src/generated/api.pbgrpc.dart';

class PuckSdk {
  PuckSdk({
    String address = '0.0.0.0',
    int port = 50051,
    bool isTlsEnabled = false,
  }) {
    print('Creating channel at $address:$port');
    _channel = ClientChannel(
      address,
      port: port,
      options: ChannelOptions(
        credentials: isTlsEnabled
            ? ChannelCredentials.secure()
            : ChannelCredentials.insecure(),
      ),
    );
    _client = PuckClient(_channel);
  }

  late final ClientChannel _channel;
  late final PuckClient _client;

  ///
  /// Should be called when PuckSdk is no longer in use.
  ///
  Future<void> dispose() => _channel.shutdown();

  ///
  /// Creates a new team and returns the created team if successful.
  ///
  Future<CreateTeamResponse> createTeam({required CreateTeamRequest request}) =>
      _client.createTeam(request);
}
