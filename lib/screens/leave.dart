import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LeaveScreen extends StatefulWidget {
  const LeaveScreen({super.key});

  @override
  State<LeaveScreen> createState() => _LeaveScreenState();
}

class _LeaveScreenState extends State<LeaveScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('  Leave Apllication',
            style: GoogleFonts.poppins(
                textStyle: const TextStyle(fontSize: 23, color: Colors.white))),
        backgroundColor: const Color(0xFFA40606),
        elevation: 20,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(10))),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Leave Type',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xFFEAEAEA), // Set background color
                    borderRadius: BorderRadius.circular(17.0),
                    border: Border.all(
                        color: Colors.black, width: 1) // Add rounded corners
                    ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0), // Add inner padding
                  child: TextField(
                    textAlign: TextAlign.center, // Center hint text
                    decoration: InputDecoration(
                      hintText: 'Select',
                      hintStyle: TextStyle(
                        fontSize: 16, // Hint text color
                      ),
                      border: InputBorder.none, // Remove default border
                    ),
                  ),
                ),
              ),
            ),
            const Text(
              'Date',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  // First input field with rounded container
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFFEAEAEA),
                          borderRadius: BorderRadius.circular(17.0),
                          border: Border.all(color: Colors.black, width: 1)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: 'Select',
                            hintStyle: TextStyle(fontSize: 16),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                      width: 10.0), // Add spacing between input fields
                  // Second input field (similar styling)
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                          color: const Color(0xFFEAEAEA),
                          borderRadius: BorderRadius.circular(17.0),
                          border: Border.all(color: Colors.black, width: 1)),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            hintText: 'Select', // Change hint text as needed
                            hintStyle: TextStyle(fontSize: 16),
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Text(
              'Remarks',
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xFFEAEAEA), // Light gray background
                    borderRadius: BorderRadius.circular(17.0),
                    border: Border.all(
                        color: Colors.black, width: 1) // Rounded corners
                    ),
                height: 200.0, // Set a fixed height for the box
                child: const Padding(
                  padding: EdgeInsets.only(top: 10, left: 25), // Inner padding
                  child: TextField(
                    maxLines: 5, // Allow multiple lines of text
                    decoration: InputDecoration(
                      hintText: 'Write here',
                      hintStyle:
                          TextStyle(fontSize: 16.0), // Style the hint text
                      border: InputBorder.none, // Remove default border
                    ),
                  ),
                ),
              ),
            ), //padding
            //btns
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                children: [
                  // First input field with rounded container
                  SizedBox(
                    width: 160,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(const Color(0xFFEEEEEE)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.black),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17.0)),
                        ),
                        // Add more properties like padding, elevation, etc.
                      ),
                      child: Text('Cancel',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 16,
                          ))),
                    ),
                  ),
                  const SizedBox(
                      width: 25.0), // Add spacing between input fields
                  // Second input field (similar styling)
                  SizedBox(
                    width: 160,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(const Color(0xFFA40606)),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(17.0)),
                        ),
                        // Add more properties like padding, elevation, etc.
                      ),
                      child: Text('Apply',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                            fontSize: 16,
                          ))),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
