import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ksrtc_mob_app/views/navigation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController phonecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB1B8DE),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.directions_bus_outlined,
                  color: Color(0xFFA40606), size: 100),
              //const SizedBox(height: 20),
              Text('Welcome',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color(0xFF334D6E), fontSize: 33))),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFFCFD3ED),
                        Color(0xFFEEF0FF),
                      ],
                      stops: [0.0, 1.0],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white,
                        offset: Offset(-2, -2),
                        blurRadius: 4,
                      ),
                      BoxShadow(
                        color: Color(0xFF9EA1BB),
                        offset: Offset(2, 2),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: phonecontroller,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        hintText: 'Phone number',
                        hintStyle: TextStyle(
                          fontSize: 16,
                        ),
                        border: InputBorder.none,
                      ),
                      keyboardType: TextInputType.phone,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(10),
                      ],
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),
              SizedBox(
                width: 190,
                height: 51,
                child: ElevatedButton(
                  onPressed: () async {
                    //Get.to(const OTPScreen());
                    final SharedPreferences sharedPreferences =
                        await SharedPreferences.getInstance();
                    sharedPreferences.setString(
                        'phonenumber', phonecontroller.text);
                    Get.to(const NavigationScreen());
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3E4073),
                      foregroundColor: Colors.white),
                  child: Text('Generate OTP',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 16,
                      ))),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
