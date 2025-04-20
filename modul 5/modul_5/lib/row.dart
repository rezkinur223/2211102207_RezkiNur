import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('')),
        body: const MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Row(
        children: <Widget>[
          const FlutterLogo(),
          const Expanded(
            child: Text(
              "Flutter's hot reload helps you quickly and easily experiment, build UIs, add "
              "features, and fix bugs faster. Experience sub-second reload times, without losing state, on "
              "emulators, simulators, and hardware for iOS and Android.",
            ),
          ),
          const Icon(Icons.sentiment_very_satisfied),
        ],
      ),
    );
  }
}
