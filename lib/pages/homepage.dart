import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var x = 'dharmik';
    return Scaffold(
      appBar: AppBar(title: Text('DHARMIK\'S FIRST APP')),
      body: Center(
        child: Text('first application by $x'),
      ),
      drawer: Drawer(),
    );
  }
}
