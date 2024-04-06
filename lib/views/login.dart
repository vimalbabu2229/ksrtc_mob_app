import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ksrtc_mob_app/views/navigation.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _login() {
    const String validUsername = '123';
    const String validPassword = '456';

    String enteredUsername = _usernameController.text.trim();
    String enteredPassword = _passwordController.text.trim();

    if (enteredUsername == validUsername && enteredPassword == validPassword) {
      Get.to(const NavigationScreen());
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Invalid username or password'),
        ),
      );
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
              //const SizedBox(height: 20),
              Text('Welcome',
                  style: GoogleFonts.poppins(
                      textStyle: const TextStyle(
                          color: Color(0xFF334D6E), fontSize: 33))),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFEAEAEA), // Set background color
                    borderRadius:
                        BorderRadius.circular(30.0), // Add rounded corners
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0), // Add inner padding
                    child: TextField(
                      controller: _usernameController,
                      textAlign: TextAlign.center, // Center hint text
                      decoration: const InputDecoration(
                        hintText: 'Username',
                        hintStyle: TextStyle(
                          fontSize: 16,
                          // Hint text color
                        ),
                        border: InputBorder.none, // Remove default border
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFFEAEAEA), // Set background color
                    borderRadius:
                        BorderRadius.circular(30.0), // Add rounded corners
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0), // Add inner padding
                    child: TextField(
                      controller: _passwordController,
                      obscureText: true,
                      textAlign: TextAlign.center, // Center hint text
                      decoration: const InputDecoration(
                        hintText: 'Password',
                        hintStyle: TextStyle(
                          fontSize: 16, // Hint text color
                        ),
                        border: InputBorder.none, // Remove default border
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 190,
                height: 51,
                child: ElevatedButton(
                  onPressed: _login,
                  // onPressed: () {
                  //   Get.to(const NavigationScreen());
                  // },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF3E4073),
                      foregroundColor: Colors.white),
                  child: Text('Login',
                      style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                        fontSize: 16,
                      ))),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () {},
                child: Text('Forgot password?',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                      color: Color(0xFF334D6E),
                      fontSize: 17,
                    ))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
