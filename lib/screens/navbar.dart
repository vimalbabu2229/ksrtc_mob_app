import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
      body: SafeArea(
        // Ensures content stays within screen bounds
        child: Column(
          children: [
            // Top box with text and inner box
            Container(
              //margin: const EdgeInsets.fromLTRB(0, 00, 0, 0),
              color: Color(0xFFE1E6FF),
              width: double.infinity,
              height: 200,
              child: Stack(
                children: [
                  Text('vhgvghv',
                      style: TextStyle(
                          fontSize: 30.0)), // Text positioned in the center
                  Positioned(
                    // Inner box positioned at the bottom
                    bottom: 0.0,
                    left: 0.0,
                    right: 0.0,
                    child: Container(
                      height: 50.0,
                      color: Color(0xFFDADEF1),
                    ),
                  ),
                ],
              ),
            ),

            // Bottom box with scrollable schedules (replace with your schedule widget)
            Expanded(
              child: Container(
                color: Colors.red,
                child:
                    Text('Your Schedules'), // Replace with your schedule widget
              ),
            ),
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
