import 'package:puck_client/puck_client.dart';

class PuckRepository {
  const PuckRepository({required PuckSdk sdk}) : _sdk = sdk;

  final PuckSdk _sdk;

  Future<Team> createTeam({
    required String location,
    required String nickname,
    required String abbreviation,
  }) async {
    final response = await _sdk.createTeam(
      request: CreateTeamRequest(
        location: location,
        nickname: nickname,
        abbreviation: abbreviation,
      ),
    );
    return response.team;
  }
}
