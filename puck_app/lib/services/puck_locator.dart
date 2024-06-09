import 'package:get_it/get_it.dart';
import 'package:puck_app/services/services.dart';
import 'package:puck_client/puck_client.dart';

class PuckLocator {
  static void setup() {
    final getIt = GetIt.I;
    getIt.registerLazySingleton<PuckRepository>(
      () => PuckRepository(sdk: PuckSdk()),
    );
  }
}
