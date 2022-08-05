import 'package:flutter/material.dart';
import 'package:no_logo_proto/screens/login_screen.dart';
import 'package:no_logo_proto/screens/start_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        // '/': (context) => UserInfo(),
        '/': (context) => LoginScreen(),
        'start': (context) => StartScreen(),
      },
    );
  }
}
