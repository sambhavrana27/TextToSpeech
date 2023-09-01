import 'package:flutter/material.dart';
import 'package:tts/Pages/Auth/login_page.dart';
import 'package:tts/Pages/Auth/register_page.dart';
import 'package:tts/Pages/Auth/homepage.dart';
import 'package:tts/Pages/Auth/registered.dart';
import 'package:tts/Pages/Auth/logged_in.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/register',
      routes: {
        '/login': (context) => const LoginPage(),
        '/register': (context) => const RegisterPage(),
        '/home': (context) => const HomePage(),
        '/registered': (context) => const Registered(),
        '/loggedin': (context) => const LoggedIn(),
      },
    );
  }
}
