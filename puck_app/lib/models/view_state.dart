sealed class ViewState {
  const ViewState();
}

final class Idle extends ViewState {
  const Idle();
}

final class Loading extends ViewState {
  const Loading();
}

final class Failed extends ViewState {
  const Failed(this.error);

  final Object? error;
}

final class Success<T> extends ViewState {
  const Success(this.data);

  final T? data;
}
