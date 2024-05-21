import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ksrtc_mob_app/controller/navbar_controller.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    BottomNavigationBarController pagecontroller =
        Get.put(BottomNavigationBarController());

    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
        child: GNav(
          backgroundColor: const Color(0xFFE1E6FF),
          color: const Color(0xFF383A69),
          activeColor: Colors.blueAccent,
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 75),
          onTabChange: (value) {
            pagecontroller.index.value = value;
          },
          tabs: const [
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
      body: Obx(() => pagecontroller.pages[pagecontroller.index.value]),
    );
  }
}
