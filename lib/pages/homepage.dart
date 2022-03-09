import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var safeArea = MediaQuery.of(context).padding.top;
    return Scaffold(
        floatingActionButton: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 80,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: const [
                    Icon(
                      Icons.circle,
                      size: 15,
                      color: Color.fromARGB(166, 54, 53, 63),
                    ),
                    Icon(
                      Icons.circle,
                      size: 15,
                      color: Color.fromARGB(255, 63, 61, 86),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () => Navigator.pushNamed(context, "/login"),
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: const Color.fromARGB(255, 63, 61, 86),
                    ),
                    child: const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: safeArea,
              ),
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
                child: Text("It's not about the brand,\n it's about the style.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color.fromARGB(164, 63, 61, 86),
                      fontSize: 15,
                      fontWeight: FontWeight.w100,
                    )),
              ),
            ],
          ),
        ));
  }
}
