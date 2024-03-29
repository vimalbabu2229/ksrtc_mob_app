import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Color(0xffF2F3FF),
              Color(0xffB8BAD9),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 40, 0, 10),
              child: Text(
                "Today's Schedule",
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              width: 350,
              height: 210,
              decoration: BoxDecoration(
                  color: const Color(0xffDADEF1),
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.black,
                        blurRadius: 15.0,
                        //blurStyle: BlurStyle.normal,
                        offset: Offset(0.0, 5.0)),
                  ]),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
                child: Container(
                  decoration: BoxDecoration(
                      color: const Color(0xff3E4073),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),

                  // Add your content here
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        child: GNav(
          backgroundColor: Color(0xFFE1E6FF),
          color: Color(0xFF383A69),
          activeColor: Colors.blueAccent,
          padding: EdgeInsets.symmetric(vertical: 12, horizontal: 75),
          tabs: [
            GButton(
              icon: Icons.home,
              iconSize: 30,
            ),
            GButton(
              icon: Icons.person,
              iconSize: 30,
            ),
          ],
        ),
      ),
    );
  }
}
