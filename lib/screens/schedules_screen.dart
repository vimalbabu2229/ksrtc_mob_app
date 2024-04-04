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
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 55, 0, 10),
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
                  //inner container
                  Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)),
                        color: Color.fromRGBO(227, 229, 250, 1),
                        border: Border(
                          bottom: BorderSide(
                            width: .7,
                            color: Colors.grey,
                          ),
                        )),
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
                            color: Colors.grey,
                          ),
                        )),
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
                          color: Colors.grey,
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
                    ),
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
                            padding: const EdgeInsets.only(left: 10, right: 10),
                            height: 100,
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: 1,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 25, 0, 25),
                                  child:
                                      Image.asset('assets/profile/Icon3.png'),
                                ),
                                Column(
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 13, 20, 10),
                                          child: Text(
                                            '3:40\nParassala',
                                            style: GoogleFonts.montserrat(
                                                textStyle: const TextStyle(
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1),
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            )),
                                            textAlign: TextAlign.left,
                                            softWrap: false,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 13, 20, 10),
                                          child: Text(
                                            'NH',
                                            style: GoogleFonts.montserrat(
                                              textStyle: const TextStyle(
                                                color: Color.fromRGBO(
                                                    255, 255, 255, 1),
                                                fontSize: 15,
                                                fontWeight: FontWeight.w400,
                                              ),
                                            ),
                                            softWrap: false,
                                          ),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              10, 13, 0, 10),
                                          child: Text(
                                            '3:45\nKaliyikkavila',
                                            style: GoogleFonts.montserrat(
                                                textStyle: const TextStyle(
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1),
                                              fontSize: 15,
                                              fontWeight: FontWeight.bold,
                                            )),
                                            textAlign: TextAlign.right,
                                            softWrap: false,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Text(
                                      'Running Time  - 5 mins ',
                                      style: GoogleFonts.montserrat(
                                          textStyle: const TextStyle(
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 0.5),
                                              fontSize: 15,
                                              fontWeight: FontWeight.w400)),
                                    ),
                                  ],
                                )
                              ],
                            ),
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
