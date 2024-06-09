import 'package:flutter/material.dart';
import 'package:puck_app/services/services.dart';

void main() {
  PuckLocator.setup();
  runApp(const PuckApp());
}

class PuckApp extends StatelessWidget {
  const PuckApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Puck',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: puckRouter,
    );
  }
}
