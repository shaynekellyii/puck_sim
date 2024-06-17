import 'package:get_it/get_it.dart';
import 'package:mobx/mobx.dart';
import 'package:puck_app/features/features.dart';
import 'package:puck_app/models/models.dart';
import 'package:puck_app/services/services.dart';

part 'create_team_store.g.dart';

class CreateTeamStore = _CreateTeamStore with _$CreateTeamStore;

abstract class _CreateTeamStore with Store {
  final _repository = GetIt.I.get<PuckRepository>();
  CreateTeamFormErrorState formErrorState = CreateTeamFormErrorState();

  //
  // Observables
  //
  @observable
  String location = '';

  @observable
  String nickname = '';

  @observable
  String abbreviation = '';

  @observable
  ViewState viewState = const Idle();

  @computed
  bool get isFormValid => !formErrorState.hasError;

  //
  // Actions
  //
  @action
  void setLocation(String value) {
    location = value;
    viewState = const Idle();
  }

  @action
  void setNickname(String value) {
    nickname = value;
    viewState = const Idle();
  }

  @action
  void setAbbreviation(String value) {
    abbreviation = value;
    viewState = const Idle();
  }

  @action
  Future<void> submit() async {
    viewState = const Loading();
    try {
      await _repository.createTeam(
        location: location,
        nickname: nickname,
        abbreviation: abbreviation,
      );
      viewState = const Success(null);
    } catch (e) {
      viewState = Failed(e);
    }
  }

  //
  // Reactions
  //
  late List<ReactionDisposer> _disposers;

  void setupReactions() {
    _disposers = [
      reaction((_) => location, validateLocation),
      reaction((_) => nickname, validateNickname),
      reaction((_) => abbreviation, validateAbbreviation),
    ];
  }

  @action
  void validateLocation(String value) {
    formErrorState.location = _validateAlpha(value);
  }

  @action
  void validateNickname(String value) {
    formErrorState.nickname = _validateAlpha(value);
  }

  @action
  void validateAbbreviation(String value) {
    String? err;
    if (value.trim().isEmpty) err = 'Field cannot be empty';
    err ??= RegExp(r'^[a-zA-Z]{3}$').hasMatch(value.trim())
        ? null
        : 'Abbreviation must be 3 letters';
    formErrorState.abbreviation = err;
  }

  void dispose() {
    for (final d in _disposers) {
      d();
    }
  }

  String? _validateAlpha(String value) {
    if (value.trim().isEmpty) return 'Field cannot be empty';
    return RegExp(r'^[a-zA-Z ]*$').hasMatch(value.trim())
        ? null
        : 'This field can only contain alphabetical characters and spaces';
  }
}
