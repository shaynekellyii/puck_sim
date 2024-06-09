import 'package:puck_client/puck_client.dart';

late final PuckSdk sdk;

Future<void> main() async {
  print('Creating SDK');
  sdk = PuckSdk();

  print('Creating team');
  try {
    final createTeamResponse = await sdk.createTeam(
      request: CreateTeamRequest(
        location: "Vancouver",
        nickname: "Canucks",
        abbreviation: "VAN",
      ),
    );
    print('Created new team:\n${createTeamResponse.team}');
  } catch (e) {
    print('Error creating team: $e');
    await dispose();
    return;
  }

  await dispose();
}

Future<void> dispose() async {
  print('Shutting down SDK');
  await sdk.dispose();
}
