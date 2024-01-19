import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({Key? key}) : super(key: key);

  final Logger logger = Logger();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
          centerTitle: true,
        ),
        body: const Center(
          child: Text('Hello '),
        ),
        floatingActionButton: FloatingActionButton(
          child: const Text("Press"),
          onPressed: () {
            logger.t("Logging");
          },
        ),
      ),
    );
  }
}
