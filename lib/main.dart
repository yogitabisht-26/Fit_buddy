// ignore_for_file: unused_import

import 'package:fitbuddy/pages/details/details.dart';
import 'package:fitbuddy/pages/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fit Buddy',
      theme: ThemeData(
          //brightness: Brightness.dark,
          fontFamily: 'ComicNeue',
          textTheme: const TextTheme(
              displayLarge: TextStyle(
            fontSize: 14,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ))),
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const Homepage(),
        '/details': (context) => const DetailsPage(),
      },
      initialRoute: '/',
    );
  }
}
