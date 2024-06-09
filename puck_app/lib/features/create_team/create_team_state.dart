import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:puck_app/utilities/form_inputs.dart';
import 'package:puck_app/utilities/utilities.dart';

part 'create_team_state.freezed.dart';

@freezed
class CreateTeamState with _$CreateTeamState {
  const factory CreateTeamState({
    @Default(AlphaInput.pure()) AlphaInput location,
    @Default(AlphaInput.pure()) AlphaInput nickname,
    @Default(AbbreviationInput.pure()) AbbreviationInput abbreviation,
    @Default(FormzSubmissionStatus.initial) FormzSubmissionStatus status,
    @Default(false) bool isFormValid,
    String? errorMsg,
  }) = _CreateTeamState;
}
