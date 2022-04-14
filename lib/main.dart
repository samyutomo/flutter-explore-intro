import 'package:flutter/material.dart';

void main() {
  runApp(const XplorApp());
}

class XplorApp extends StatelessWidget {
  const XplorApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Exploration Design",
      theme: ThemeData.light().copyWith(
          colorScheme:
              ColorScheme.fromSwatch().copyWith(primary: Colors.deepPurple)),
      home: Scaffold(
          appBar: AppBar(
            title: const Center(child: Text("Exploration Design")),
          ),
          body: Center(
              child: Text(
            "This app is being built by Flutter framework",
            style: Theme.of(context).textTheme.bodyLarge,
          ))),
    );
  }
}
