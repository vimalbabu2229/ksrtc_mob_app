import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ksrtc_mob_app/screens/login.dart';
// import 'package:get/get.dart';
// import 'package:ksrtc/splash_controller.dart';

class SplashScreen extends StatelessWidget {
  //final splashController = Get.put(SplashController());
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const LoginScreen()));
    });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Your app icon (replace with your actual icon widget)
            const Icon(Icons.directions_bus_outlined,
                color: Color(0xFFA40606), size: 120),
            const SizedBox(height: 20),

            Text('KSRTC',
                style: GoogleFonts.poppins(
                    textStyle: const TextStyle(
                  color: Color(0xFF334D6E),
                  fontSize: 33,
                ))),
          ],
        ),
      ),
    );
  }
}
