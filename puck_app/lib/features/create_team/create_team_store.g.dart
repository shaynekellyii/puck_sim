// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_team_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CreateTeamStore on _CreateTeamStore, Store {
  Computed<bool>? _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_CreateTeamStore.isFormValid'))
          .value;

  late final _$locationAtom =
      Atom(name: '_CreateTeamStore.location', context: context);

  @override
  String get location {
    _$locationAtom.reportRead();
    return super.location;
  }

  @override
  set location(String value) {
    _$locationAtom.reportWrite(value, super.location, () {
      super.location = value;
    });
  }

  late final _$nicknameAtom =
      Atom(name: '_CreateTeamStore.nickname', context: context);

  @override
  String get nickname {
    _$nicknameAtom.reportRead();
    return super.nickname;
  }

  @override
  set nickname(String value) {
    _$nicknameAtom.reportWrite(value, super.nickname, () {
      super.nickname = value;
    });
  }

  late final _$abbreviationAtom =
      Atom(name: '_CreateTeamStore.abbreviation', context: context);

  @override
  String get abbreviation {
    _$abbreviationAtom.reportRead();
    return super.abbreviation;
  }

  @override
  set abbreviation(String value) {
    _$abbreviationAtom.reportWrite(value, super.abbreviation, () {
      super.abbreviation = value;
    });
  }

  late final _$viewStateAtom =
      Atom(name: '_CreateTeamStore.viewState', context: context);

  @override
  ViewState get viewState {
    _$viewStateAtom.reportRead();
    return super.viewState;
  }

  @override
  set viewState(ViewState value) {
    _$viewStateAtom.reportWrite(value, super.viewState, () {
      super.viewState = value;
    });
  }

  late final _$submitAsyncAction =
      AsyncAction('_CreateTeamStore.submit', context: context);

  @override
  Future<void> submit() {
    return _$submitAsyncAction.run(() => super.submit());
  }

  late final _$_CreateTeamStoreActionController =
      ActionController(name: '_CreateTeamStore', context: context);

  @override
  void setLocation(String value) {
    final _$actionInfo = _$_CreateTeamStoreActionController.startAction(
        name: '_CreateTeamStore.setLocation');
    try {
      return super.setLocation(value);
    } finally {
      _$_CreateTeamStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setNickname(String value) {
    final _$actionInfo = _$_CreateTeamStoreActionController.startAction(
        name: '_CreateTeamStore.setNickname');
    try {
      return super.setNickname(value);
    } finally {
      _$_CreateTeamStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setAbbreviation(String value) {
    final _$actionInfo = _$_CreateTeamStoreActionController.startAction(
        name: '_CreateTeamStore.setAbbreviation');
    try {
      return super.setAbbreviation(value);
    } finally {
      _$_CreateTeamStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateLocation(String value) {
    final _$actionInfo = _$_CreateTeamStoreActionController.startAction(
        name: '_CreateTeamStore.validateLocation');
    try {
      return super.validateLocation(value);
    } finally {
      _$_CreateTeamStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateNickname(String value) {
    final _$actionInfo = _$_CreateTeamStoreActionController.startAction(
        name: '_CreateTeamStore.validateNickname');
    try {
      return super.validateNickname(value);
    } finally {
      _$_CreateTeamStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void validateAbbreviation(String value) {
    final _$actionInfo = _$_CreateTeamStoreActionController.startAction(
        name: '_CreateTeamStore.validateAbbreviation');
    try {
      return super.validateAbbreviation(value);
    } finally {
      _$_CreateTeamStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
location: ${location},
nickname: ${nickname},
abbreviation: ${abbreviation},
viewState: ${viewState},
isFormValid: ${isFormValid}
    ''';
  }
}
