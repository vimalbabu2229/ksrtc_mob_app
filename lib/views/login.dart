import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:ksrtc_mob_app/views/navigation.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _otpController = TextEditingController();

  void _sendOTP() async {
    // Get the phone number from the text field
    String phoneNumber = _phoneNumberController.text.trim();

    // Make a POST request to send OTP
    try {
      final response = await http.post(
        Uri.parse(
            'https://78f3-2401-4900-4912-1c4c-cc9a-5800-aac6-4822.ngrok-free.app/accounts/login-with-otp/'),
        body: {'phone_number': phoneNumber},
      );

      if (response.statusCode == 200) {
        // OTP sent successfully
        print('OTP sent successfully');
      } else {
        // Handle error
        print('Failed to send OTP: ${response.body}');
      }
    } catch (e) {
      // Handle connection error
      print('Error sending OTP: $e');
    }
  }

  void _verifyOTP() async {
    // Get the phone number and OTP from the text fields
    String phoneNumber = _phoneNumberController.text.trim();
    String otp = _otpController.text.trim();

    // Make a POST request to validate OTP
    try {
      final response = await http.post(
        Uri.parse(
            'https://78f3-2401-4900-4912-1c4c-cc9a-5800-aac6-4822.ngrok-free.app/accounts/validate-otp/'),
        body: {'phone_number': phoneNumber, 'otp': otp},
      );

      if (response.statusCode == 200) {
        // OTP validation successful, proceed with login
        Get.to(const NavigationScreen());
      } else {
        // Invalid OTP
        print('Invalid OTP');
      }
    } catch (e) {
      // Handle connection error
      print('Error validating OTP: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFB1B8DE),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Your app icon (replace with your actual icon widget)
              const Icon(Icons.directions_bus_outlined,
                  color: Color(0xFFA40606), size: 100),
              const SizedBox(height: 20),
              Text('Welcome',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color(0xFF334D6E), fontSize: 33))),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFEAEAEA),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _phoneNumberController,
                      keyboardType: TextInputType.phone,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        hintText: 'Phone Number',
                        hintStyle: TextStyle(
                          fontSize: 16,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFEAEAEA),
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _otpController,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      decoration: const InputDecoration(
                        hintText: 'OTP',
                        hintStyle: TextStyle(
                          fontSize: 16,
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: 190,
                height: 51,
                child: ElevatedButton(
                  onPressed: _sendOTP,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3E4073),
                      foregroundColor: Colors.white),
                  child: Text('Send OTP',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 16,
                      ))),
                ),
              ),
              const SizedBox(height: 15),
              SizedBox(
                width: 190,
                height: 51,
                child: ElevatedButton(
                  onPressed: _verifyOTP,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3E4073),
                      foregroundColor: Colors.white),
                  child: Text('Login with OTP',
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
