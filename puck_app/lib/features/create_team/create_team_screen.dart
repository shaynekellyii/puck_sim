import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:get_it/get_it.dart';
import 'package:puck_app/features/features.dart';
import 'package:puck_app/services/services.dart';

class CreateTeamScreen extends StatelessWidget {
  const CreateTeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CreateTeamBloc(
        puckRepository: GetIt.I.get<PuckRepository>(),
      ),
      child: const CreateTeamView(),
    );
  }
}

class CreateTeamView extends StatelessWidget {
  const CreateTeamView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'Create team',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const _CreateTeamForm(),
          ],
        ),
      ),
    );
  }
}

class _CreateTeamForm extends StatelessWidget {
  const _CreateTeamForm();

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreateTeamBloc, CreateTeamState>(
      listenWhen: (previous, current) => previous.status != current.status,
      listener: (context, state) {
        if (state.status == FormzSubmissionStatus.failure) {
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(SnackBar(content: Text('Oops: ${state.errorMsg}')));
        } else if (state.status == FormzSubmissionStatus.success) {
          // TODO: Go to next step in the flow
          ScaffoldMessenger.of(context)
            ..clearSnackBars()
            ..showSnackBar(
              const SnackBar(content: Text('Team created successfully! 🎉')),
            );
        }
      },
      child: const Column(
        children: [
          _LocationInput(),
          _NicknameInput(),
          _AbbreviationInput(),
          SizedBox(height: 20.0),
          Center(child: _SubmitButton()),
        ],
      ),
    );
  }
}

class _LocationInput extends StatelessWidget {
  const _LocationInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateTeamBloc, CreateTeamState>(
      buildWhen: (previous, current) => previous.location != current.location,
      builder: (context, state) {
        return TextField(
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            labelText: 'Location',
            errorText: state.location.error?.message(),
          ),
          onChanged: (location) => context.read<CreateTeamBloc>().add(
                TeamLocationEdited(location),
              ),
        );
      },
    );
  }
}

class _NicknameInput extends StatelessWidget {
  const _NicknameInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateTeamBloc, CreateTeamState>(
      buildWhen: (previous, current) => previous.nickname != current.nickname,
      builder: (context, state) {
        return TextField(
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            labelText: 'Nickname',
            errorText: state.nickname.error?.message(),
          ),
          onChanged: (nickname) => context.read<CreateTeamBloc>().add(
                TeamNicknameEdited(nickname),
              ),
        );
      },
    );
  }
}

class _AbbreviationInput extends StatelessWidget {
  const _AbbreviationInput();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateTeamBloc, CreateTeamState>(
      buildWhen: (previous, current) =>
          previous.abbreviation != current.abbreviation,
      builder: (context, state) {
        return TextField(
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            labelText: 'Abbreviation',
            hintText: 'Must be 3 letters',
            errorText: state.abbreviation.error?.message(),
          ),
          onChanged: (abbrevation) => context.read<CreateTeamBloc>().add(
                TeamAbbreviationEdited(abbrevation),
              ),
        );
      },
    );
  }
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateTeamBloc, CreateTeamState>(
      buildWhen: (previous, current) =>
          previous.isFormValid != current.isFormValid ||
          previous.status != current.status,
      builder: (context, state) {
        return FilledButton.icon(
          onPressed: state.isFormValid &&
                      state.status == FormzSubmissionStatus.initial ||
                  state.status == FormzSubmissionStatus.failure
              ? () => context
                  .read<CreateTeamBloc>()
                  .add(const CreateTeamRequested())
              : null,
          label: const Text('Submit'),
          icon: const Icon(Icons.check),
        );
      },
    );
  }
}
