import 'package:puck_client/puck_client.dart';
import 'package:puck_client/src/generated/api.pb.dart';

Future<void> main() async {
  print('Creating SDK');
  final sdk = PuckSdk();

  print('Creating team');
  final createTeamResponse = await sdk
      .createTeam(
        request: CreateTeamRequest(
          location: "Vancouver",
          nickname: "Canucks",
          abbreviation: "VAN",
        ),
      )
      .run();
  createTeamResponse.match(
    (e) => print('Error creating team: $e'),
    (response) => print('Created new team:\n${response.team}'),
  );

  print('Shutting down SDK');
  await sdk.dispose();
}
