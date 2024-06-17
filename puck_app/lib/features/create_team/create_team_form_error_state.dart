import 'package:mobx/mobx.dart';

part 'create_team_form_error_state.g.dart';

class CreateTeamFormErrorState = _CreateTeamFormErrorState
    with _$CreateTeamFormErrorState;

abstract class _CreateTeamFormErrorState with Store {
  @observable
  String? location;

  @observable
  String? nickname;

  @observable
  String? abbreviation;

  @computed
  bool get hasError =>
      location != null || nickname != null || abbreviation != null;
}
