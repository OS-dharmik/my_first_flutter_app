import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Material(
      child: SafeArea(
        child: Center(
          child: Text(
            'Login page',
            style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal),
          ),
        ),
      ),
    );
  }
}
sachin