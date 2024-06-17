// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_team_form_error_state.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$CreateTeamFormErrorState on _CreateTeamFormErrorState, Store {
  Computed<bool>? _$hasErrorComputed;

  @override
  bool get hasError =>
      (_$hasErrorComputed ??= Computed<bool>(() => super.hasError,
              name: '_CreateTeamFormErrorState.hasError'))
          .value;

  late final _$locationAtom =
      Atom(name: '_CreateTeamFormErrorState.location', context: context);

  @override
  String? get location {
    _$locationAtom.reportRead();
    return super.location;
  }

  @override
  set location(String? value) {
    _$locationAtom.reportWrite(value, super.location, () {
      super.location = value;
    });
  }

  late final _$nicknameAtom =
      Atom(name: '_CreateTeamFormErrorState.nickname', context: context);

  @override
  String? get nickname {
    _$nicknameAtom.reportRead();
    return super.nickname;
  }

  @override
  set nickname(String? value) {
    _$nicknameAtom.reportWrite(value, super.nickname, () {
      super.nickname = value;
    });
  }

  late final _$abbreviationAtom =
      Atom(name: '_CreateTeamFormErrorState.abbreviation', context: context);

  @override
  String? get abbreviation {
    _$abbreviationAtom.reportRead();
    return super.abbreviation;
  }

  @override
  set abbreviation(String? value) {
    _$abbreviationAtom.reportWrite(value, super.abbreviation, () {
      super.abbreviation = value;
    });
  }

  @override
  String toString() {
    return '''
location: ${location},
nickname: ${nickname},
abbreviation: ${abbreviation},
hasError: ${hasError}
    ''';
  }
}
