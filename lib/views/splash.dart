import 'dart:async';
import 'package:ksrtc_mob_app/views/navigation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ksrtc_mob_app/views/login.dart';

String? finalphonenumber;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    getValidationData().whenComplete(() async {
      Timer(
          const Duration(seconds: 3),
          () => Get.to(finalphonenumber == null
              ? const LoginScreen()
              : const NavigationScreen()));
    });
  }

  Future getValidationData() async {
    final SharedPreferences sharedPreferences =
        await SharedPreferences.getInstance();
    var obtainednumber = sharedPreferences.getString('phonenumber');
    setState(() {
      finalphonenumber = obtainednumber;
    });
    print(finalphonenumber);
  }

  @override
  Widget build(BuildContext context) {
    // Future.delayed(const Duration(seconds: 3), () {
    //   Navigator.pushReplacement(context,
    //       MaterialPageRoute(builder: (context) => const LoginScreen()));
    // });
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
