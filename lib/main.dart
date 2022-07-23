import 'package:flutter/material.dart';
import 'package:flutter_first/pages/homepage.dart';
import 'package:flutter_first/pages/loginpage.dart';
import 'package:flutter_first/utilities/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.blue),
      darkTheme:
          ThemeData(brightness: Brightness.dark, primarySwatch: Colors.red),
      initialRoute: "/login",
      routes: {
        MyRoutes.homeRoute: ((context) => const MyHomePage()),
        MyRoutes.loginRoute: ((context) => const Loginpage()),
      },
    );
  }
}
