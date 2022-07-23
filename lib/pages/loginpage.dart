// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:flutter_first/utilities/routes.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  String name = "";
  bool changebutton = false;

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              children: [
                ((Image.asset(
                  "assets/images/loginimage.png",
                  fit: BoxFit.cover,
                  height: 300,
                ))),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Welcome $name",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 20.0, horizontal: 32.0),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: const InputDecoration(
                            labelText: "USERNAME:-",
                            hintText: "ENTER THE USER NAME"),
                        validator: (value) {
                          if (value!.isEmpty) //null safety error
                          {
                            return "username cannot be empty";
                          }
                          return null;
                        },
                        onChanged: (value) {
                          name = value;
                          setState(() {});
                        },
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            labelText: "PASSWORD:-",
                            hintText: "ENTER THE PASSWORD"),
                        validator: (value) {
                          if (value!.isEmpty) //null safety error
                          {
                            return "password cannot be empty";
                          } else if (value.length < 6) {
                            return "the length of the password cannot be less than six";
                          }
                          return null;
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(changebutton ? 30 : 8),
                          //borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: Colors.blue,
                        ),
                        child: InkWell(
                          onTap: () async {
                            if (_formkey.currentState!.validate()) {
                              _formkey.currentState!.save();
                              setState(() {
                                changebutton = true;
                              });
                              await Future.delayed(Duration(seconds: 2));
                              //final result = await Navigator.of(context)
                              await Navigator.of(context)
                                  .pushNamed(MyRoutes.homeRoute);
                              setState(() {
                                changebutton = false;
                                // if (result != null) changebutton = false;
                                // name = result.toString();
                              });
                              await Future.delayed(Duration(seconds: 2));
                            }
                            // Navigator.pushNamed(context, MyRoutes.homeRoute);
                          },
                          child: AnimatedContainer(
                            duration: Duration(seconds: 2),
                            height: 50,
                            width: changebutton ? 50 : 150,
                            alignment: Alignment.center,
                            child: changebutton
                                ? Icon(
                                    Icons.done,
                                    color: Colors.white,
                                  )
                                : Text(
                                    "LOGIN",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                        fontSize: 18),
                                  ),
                          ),
                        ),

                        // ElevatedButton(
                        //     style: TextButton.styleFrom(
                        //         minimumSize: const Size(150, 50)),
                        //     onPressed: () {
                        //       Navigator.pushNamed(context, MyRoutes.homeRoute);
                        //     },
                        //     child: const Text("LOGIN"))
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
