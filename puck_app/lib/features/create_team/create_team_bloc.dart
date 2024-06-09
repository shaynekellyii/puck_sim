import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:puck_app/features/features.dart';
import 'package:puck_app/services/services.dart';
import 'package:puck_app/utilities/utilities.dart';

part 'create_team_event.dart';

class CreateTeamBloc extends Bloc<CreateTeamEvent, CreateTeamState> {
  CreateTeamBloc({
    required PuckRepository puckRepository,
  })  : _repository = puckRepository,
        super(const CreateTeamState()) {
    on<TeamAbbreviationEdited>(_onTeamAbbreviationEdited);
    on<TeamLocationEdited>(_onTeamLocationEdited);
    on<TeamNicknameEdited>(_onTeamNicknameEdited);
    on<CreateTeamRequested>(_onCreateTeamRequested, transformer: droppable());
  }

  final PuckRepository _repository;

  void _onTeamAbbreviationEdited(
    TeamAbbreviationEdited event,
    Emitter<CreateTeamState> emit,
  ) {
    final abbreviation = AbbreviationInput.dirty(event.abbreviation);
    emit(
      state.copyWith(
        abbreviation: abbreviation,
        status: FormzSubmissionStatus.initial,
        isFormValid: Formz.validate(
          [
            abbreviation,
            state.location,
            state.nickname,
          ],
        ),
      ),
    );
  }

  void _onTeamLocationEdited(
    TeamLocationEdited event,
    Emitter<CreateTeamState> emit,
  ) {
    final location = AlphaInput.dirty(event.location);
    emit(
      state.copyWith(
        location: location,
        status: FormzSubmissionStatus.initial,
        isFormValid: Formz.validate(
          [
            state.abbreviation,
            location,
            state.nickname,
          ],
        ),
      ),
    );
  }

  void _onTeamNicknameEdited(
    TeamNicknameEdited event,
    Emitter<CreateTeamState> emit,
  ) {
    final nickname = AlphaInput.dirty(event.nickname);
    emit(
      state.copyWith(
        nickname: nickname,
        status: FormzSubmissionStatus.initial,
        isFormValid: Formz.validate(
          [
            state.abbreviation,
            state.location,
            nickname,
          ],
        ),
      ),
    );
  }

  Future<void> _onCreateTeamRequested(
    CreateTeamRequested _,
    Emitter<CreateTeamState> emit,
  ) async {
    emit(state.copyWith(status: FormzSubmissionStatus.inProgress));
    try {
      if (!state.isFormValid) throw Exception('Form is invalid');
      await _repository.createTeam(
        location: state.location.value.trim(),
        nickname: state.nickname.value.trim(),
        abbreviation: state.abbreviation.value.trim(),
      );
      emit(state.copyWith(status: FormzSubmissionStatus.success));
    } catch (e) {
      emit(
        state.copyWith(
          status: FormzSubmissionStatus.failure,
          errorMsg: e.toString(),
        ),
      );
    }
  }
}
