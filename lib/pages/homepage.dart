import 'package:flutter/material.dart';
import 'package:flutter_first/pages/widgets/drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final data = false;
  final name = "";
  @override
  Widget build(BuildContext context) {
    var x = 'DHARMIK';
    return Scaffold(
      appBar: AppBar(title: Text('$x\'S  APP')),
      body: const Center(
          // child: ElevatedButton(
          //   onPressed: () => Navigator.of(context).pop(name),
          //   child: const Text("logout"),
          // ),
          ),
      drawer: const Mydrawer(),
    );
  }
}
