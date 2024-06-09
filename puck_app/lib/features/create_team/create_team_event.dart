part of 'create_team_bloc.dart';

sealed class CreateTeamEvent {
  const CreateTeamEvent();
}

final class TeamLocationEdited extends CreateTeamEvent {
  const TeamLocationEdited(this.location);
  final String location;
}

final class TeamNicknameEdited extends CreateTeamEvent {
  const TeamNicknameEdited(this.nickname);
  final String nickname;
}

final class TeamAbbreviationEdited extends CreateTeamEvent {
  const TeamAbbreviationEdited(this.abbreviation);
  final String abbreviation;
}

final class CreateTeamRequested extends CreateTeamEvent {
  const CreateTeamRequested();
}
