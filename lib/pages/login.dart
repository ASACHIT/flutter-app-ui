// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                    // set few padding in top
                    padding: const EdgeInsets.only(top: 50),
                    child: Image.asset(
                      "assets/login.png",
                      width: 350,
                    )),
                Row(
                  children: const [
                    // Padding(
                    //   // set few padding in top
                    //   padding: EdgeInsets.only(left: 30),
                    //   child: Text("Let's \n get started",
                    //       textAlign: TextAlign.left,
                    //       style: TextStyle(
                    //           fontSize: 30,
                    //           fontWeight: FontWeight.w600,
                    //           color: Color.fromARGB(255, 63, 61, 86))),
                    // ),
                    /// add a rich text
                  ],
                ),
                // create a login form
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: SizedBox(
                    width: 350,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        prefixIcon: const Icon(
                          Icons.mail_outline_rounded,
                          color: Color.fromARGB(118, 63, 61, 86),
                        ),
                        labelText: "Email",
                        labelStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(186, 63, 61, 86)),
                        hintText: "Enter your email",
                        hintStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w200,
                            color: Color.fromARGB(118, 63, 61, 86)),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: SizedBox(
                    width: 350,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        prefixIcon: const Icon(
                          Icons.lock_outline_rounded,
                          color: Color.fromARGB(118, 63, 61, 86),
                        ),
                        labelText: "Password",
                        labelStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(186, 63, 61, 86)),
                        hintText: "Enter your Password",
                        hintStyle: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w200,
                            color: Color.fromARGB(118, 63, 61, 86)),
                      ),
                    ),
                  ),
                ),
                // create a textbutton
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: SizedBox(
                    width: 350,
                    height: 50,
                    child: TextButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                            foregroundColor: MaterialStateProperty.all(
                                const Color.fromARGB(255, 255, 255, 255)),
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color.fromARGB(255, 47, 46, 65))),
                        onPressed: () {},
                        child: const Text("Login")),
                  ),
                ),
              ],
            ),
          )),
    );
  }

  all(RoundedRectangleBorder roundedRectangleBorder) {}
}
