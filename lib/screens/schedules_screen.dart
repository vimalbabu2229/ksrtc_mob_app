import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ScheduleScreen extends StatelessWidget {
  const ScheduleScreen({super.key});

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
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 45, 0, 10),
              child: Text(
                "Today's Schedule  ",
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: Colors.black,
                        fontSize: 17,
                        fontWeight: FontWeight.bold)),
              ),
            ),

            //first box
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(30)),
                color: Color.fromRGBO(227, 229, 250, 1),
                boxShadow: [
                  BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.25),
                      offset: Offset(10, 10),
                      blurRadius: 20)
                ],
              ),
              height: 196,
              margin: const EdgeInsets.only(left: 20, right: 20, top: 15),
              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Color.fromRGBO(227, 229, 250, 1),
                        border: Border()),
                    height: 47,
                    width: double.infinity,
                    child: Text('\n Steering Duty : 8:35',
                        style: GoogleFonts.montserrat(
                          color: Colors.black,
                          textStyle: const TextStyle(fontSize: 15),
                        ),
                        textAlign: TextAlign.center),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(227, 229, 250, 1),
                        border: Border(
                            bottom: BorderSide(
                              width: .7,
                              color: Color.fromRGBO(0, 0, 0, 0.1),
                            ),
                            top: BorderSide(
                              width: .7,
                              color: Color.fromRGBO(0, 0, 0, 0.1),
                            ))),
                    height: 47,
                    width: double.infinity,
                    child: Text('\nSpread Over : 8:35',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                          ),
                        ),
                        textAlign: TextAlign.center),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        color: Color.fromRGBO(227, 229, 250, 1),
                        border: Border(
                            bottom: BorderSide(
                          width: .7,
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                        ))),
                    height: 47,
                    width: double.infinity,
                    child: Text('\nCompanion : Aneesh Kumar',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: Colors.black, fontSize: 15),
                        ),
                        textAlign: TextAlign.center),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        color: Color.fromRGBO(227, 229, 250, 1),
                        border: Border(
                            bottom: BorderSide(
                          width: .7,
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                        ))),
                    height: 55,
                    width: double.infinity,
                    child: Text('\nVehicle number: RY56783',
                        style: GoogleFonts.montserrat(
                          textStyle: const TextStyle(
                              color: Colors.black, fontSize: 15),
                        ),
                        textAlign: TextAlign.center),
                  )
                ],
              ),
            ),

            //second box
            Expanded(
                child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 25, 0, 0),
              child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0xff2B2D54),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        margin: const EdgeInsets.only(top: 20, left: 20),
                        child: Text(
                          'Schedules',
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      //listview builder
                      Expanded(
                          child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return Container(
                            height: 100,
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: 1,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            // child: Row(
                            //   children: [
                            //     Container(
                            //       width: double.infinity,
                            //       decoration: const BoxDecoration(
                            //         borderRadius: BorderRadius.only(
                            //           topLeft: Radius.circular(10.0),
                            //           bottomLeft: Radius.circular(10.0),
                            //         ),
                            //         image: DecorationImage(
                            //           image: AssetImage(
                            //               'assets/profile/Icon3.png'), // Replace with your image asset path
                            //           fit: BoxFit.cover,
                            //         ),
                            //       ),
                            //     ),
                            //     // const Padding(
                            //     //   padding: EdgeInsets.all(10.0),
                            //     //   child: Column(
                            //     //     crossAxisAlignment:
                            //     //         CrossAxisAlignment.start,
                            //     //     children: [
                            //     //       Row(
                            //     //         mainAxisAlignment:
                            //     //             MainAxisAlignment.spaceBetween,
                            //     //         children: [
                            //     //           Text(
                            //     //             'startTime', // Access data from your list
                            //     //             style: TextStyle(
                            //     //               color: Colors.white,
                            //     //               fontSize: 16.0,
                            //     //               fontWeight: FontWeight.bold,
                            //     //             ),
                            //     //           ),
                            //     //           Text(
                            //     //             'endTime', // Access data from your list
                            //     //             style: TextStyle(
                            //     //               color: Colors.white,
                            //     //               fontSize: 14.0,
                            //     //             ),
                            //     //           ),
                            //     //         ],
                            //     //       ),
                            //     //       SizedBox(height: 5.0),
                            //     //       Text(
                            //     //         'from', // Access data from your list
                            //     //         style: TextStyle(
                            //     //           color: Colors.white,
                            //     //           fontSize: 14.0,
                            //     //         ),
                            //     //       ),
                            //     //       SizedBox(height: 5.0),
                            //     //       Row(
                            //     //         children: [
                            //     //           Icon(Icons.arrow_forward_ios_rounded,
                            //     //               size: 20.0, color: Colors.grey),
                            //     //           SizedBox(width: 5.0),
                            //     //           Text(
                            //     //             'to', // Access data from your list
                            //     //             style: TextStyle(
                            //     //               color: Colors.white,
                            //     //               fontSize: 14.0,
                            //     //             ),
                            //     //           ),
                            //     //         ],
                            //     //       ),
                            //     //       SizedBox(height: 5.0),
                            //     //       Text(
                            //     //         'runningTime', // Access data from your list
                            //     //         style: TextStyle(
                            //     //           fontSize: 12.0,
                            //     //           color: Colors.white,
                            //     //         ),
                            //     //       ),
                            //     //     ],
                            //     //   ),
                            //     // ),
                            //   ],
                            // ),
                          );
                        },
                      ))
                    ],
                  )),
            ))
          ],
        ),
      ),
    );
  }
}
