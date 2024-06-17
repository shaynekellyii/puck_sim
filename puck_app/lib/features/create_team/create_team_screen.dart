import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:puck_app/features/features.dart';
import 'package:puck_app/models/models.dart';
import 'package:puck_app/models/view_state.dart';

class CreateTeamScreen extends StatelessWidget {
  const CreateTeamScreen({super.key});

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

class _CreateTeamForm extends StatefulWidget {
  const _CreateTeamForm();

  @override
  State<_CreateTeamForm> createState() => __CreateTeamFormState();
}

class __CreateTeamFormState extends State<_CreateTeamForm> {
  final store = CreateTeamStore();
  late ReactionDisposer disposer;

  @override
  void initState() {
    super.initState();
    store.setupReactions();
    disposer = reaction((_) => store.viewState, (viewState) {
      if (viewState is Failed) {
        ScaffoldMessenger.of(context)
          ..clearSnackBars()
          ..showSnackBar(
            SnackBar(
              content: Text(
                'Oops... ${(store.viewState as Failed).error}',
              ),
            ),
          );
      }
    });
  }

  @override
  void dispose() {
    disposer();
    store.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            _LocationInput(store: store),
            _NicknameInput(store: store),
            _AbbreviationInput(store: store),
            const SizedBox(height: 20.0),
            Row(
              children: [
                _SubmitButton(store: store),
                const SizedBox(width: 20.0),
                _LoadingIndicator(store: store),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _LoadingIndicator extends StatelessWidget {
  const _LoadingIndicator({required this.store});

  final CreateTeamStore store;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => switch (store.viewState) {
        Loading _ => const CircularProgressIndicator.adaptive(),
        _ => const SizedBox.shrink(),
      },
    );
  }
}

class _SubmitButton extends StatelessWidget {
  const _SubmitButton({
    required this.store,
  });

  final CreateTeamStore store;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      final isEnabled = store.isFormValid &&
          (store.viewState is Idle || store.viewState is Failed);
      return FilledButton(
        onPressed: isEnabled ? store.submit : null,
        child: const Text('Create team'),
      );
    });
  }
}

class _AbbreviationInput extends StatelessWidget {
  const _AbbreviationInput({
    required this.store,
  });

  final CreateTeamStore store;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => TextField(
        onChanged: (value) => store.abbreviation = value,
        decoration: InputDecoration(
          labelText: 'Abbreviation',
          hintText: 'e.g. VAN',
          errorText: store.formErrorState.abbreviation,
        ),
      ),
    );
  }
}

class _NicknameInput extends StatelessWidget {
  const _NicknameInput({
    required this.store,
  });

  final CreateTeamStore store;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => TextField(
        onChanged: (value) => store.nickname = value,
        decoration: InputDecoration(
          labelText: 'Nickname',
          hintText: 'e.g. Canucks',
          errorText: store.formErrorState.nickname,
        ),
      ),
    );
  }
}

class _LocationInput extends StatelessWidget {
  const _LocationInput({
    required this.store,
  });

  final CreateTeamStore store;

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) => TextField(
        onChanged: (value) => store.location = value,
        decoration: InputDecoration(
          labelText: 'Location',
          hintText: 'e.g. Vancouver',
          errorText: store.formErrorState.location,
        ),
      ),
    );
  }
}
