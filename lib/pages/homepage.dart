import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Image.asset('assets/shop.png'),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 45),
                  child: Text("Style With Confidence",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 63, 61, 86))),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 10),
                  child:
                      Text("It's not about the brand,\n it's about the style.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color.fromARGB(164, 63, 61, 86),
                            fontSize: 15,
                            fontWeight: FontWeight.w100,
                          )),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80, right: 20),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: FloatingActionButton(
                      backgroundColor: const Color.fromARGB(255, 63, 61, 86),
                      onPressed: () {
                        Navigator.pushNamed(context, "/login");
                      },
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 5),
                        child: Container(
                          width: 10,
                          height: 10,
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(166, 54, 53, 63),
                          ),
                        ),
                      ),
                      Container(
                        width: 10,
                        height: 10,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 63, 61, 86),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
    );
  }
}
