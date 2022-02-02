import 'package:flutter/material.dart';
import 'package:portfolio/screens/Home/home.dart';
import 'package:portfolio/theme/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: PorfolioTheme.light(),
      darkTheme: PorfolioTheme.dark(),
      // themeMode: ThemeMode.dark,
      home: const Home(),
    );
  }
}
