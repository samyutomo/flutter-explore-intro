import 'package:flutter/material.dart';
import 'package:flutter_explore_intro/portfolio_screen.dart';

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
      home: const PortfolioScreen()
    );
  }
}
