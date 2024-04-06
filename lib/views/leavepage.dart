import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class LeaveScreen extends StatelessWidget {
  const LeaveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(177, 184, 222, 11),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              padding: const EdgeInsets.only(left: 20, top: 50, bottom: 20),
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                Get.back();
              },
              color: const Color(0xFF383A69),
              iconSize: 25,
            ),
            //outer container white
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.height,
                height: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFF2F3FF),
                      Color(0xFFB8BAD9),
                    ],
                    stops: [-0.0912, 0.3915],
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Color.fromRGBO(0, 0, 0, 0.1),
                      offset: Offset(0, -1),
                      blurRadius: 1,
                    ),
                  ],
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20, top: 20),
                        child: Text(
                          'Apply for leave',
                          style: GoogleFonts.montserrat(
                              textStyle: const TextStyle(
                                  color: Color.fromRGBO(16, 16, 16, 1),
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                      //inner container
                      Container(
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                            color: Color(0xFFDADEF1),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(0, 0, 0, 0.25),
                                  offset: Offset(10, 10),
                                  blurRadius: 20)
                            ],
                          ),
                          height: 430,
                          margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                          child: Column(children: [
                            //leave type
                            Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
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
                              height: 44,
                              width: double.infinity,
                              margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                              child: Row(
                                children: [
                                  Image.asset('assets/profile/Icon3.png'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: TextField(
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Leave Type',
                                      ),
                                      style: GoogleFonts.montserrat(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
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
                              height: 44,
                              width: double.infinity,
                              margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                              child: Row(
                                children: [
                                  Image.asset('assets/profile/Icon5.png'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: TextField(
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Leave From',
                                      ),
                                      style: GoogleFonts.montserrat(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
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
                              height: 44,
                              width: double.infinity,
                              margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                              child: Row(
                                children: [
                                  Image.asset('assets/profile/Icon5.png'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: TextField(
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Leave To',
                                      ),
                                      style: GoogleFonts.montserrat(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(30)),
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
                              height: 150,
                              width: double.infinity,
                              margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                              child: Padding(
                                  padding:
                                      const EdgeInsets.only(top: 10, left: 25),
                                  child: Expanded(
                                    child: TextField(
                                      decoration: const InputDecoration(
                                        border: InputBorder.none,
                                        hintText: 'Write here',
                                      ),
                                      style: GoogleFonts.montserrat(
                                          fontSize: 15,
                                          fontWeight: FontWeight.w600),
                                    ),
                                  )),
                            ),
                          ])),

                      //last container
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    Color(0xFF3E4073),
                                    Color(0xFF2B2D54),
                                  ],
                                  stops: [0.0565, 0.9278],
                                ),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(30),
                                    topRight: Radius.circular(30)),
                                color: Color.fromRGBO(62, 64, 115, 1),
                              ),
                              height: 90,
                              width: double.infinity,
                              child: Expanded(
                                //submit btn
                                child: Container(
                                  decoration: const BoxDecoration(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(10)),
                                    color: Color.fromRGBO(227, 229, 250, 1),
                                    boxShadow: [
                                      BoxShadow(
                                          color: Color.fromRGBO(0, 0, 0, 0.25),
                                          offset: Offset(10, 10),
                                          blurRadius: 20)
                                    ],
                                  ),
                                  height: 40,
                                  width: 158,
                                  margin: const EdgeInsets.only(
                                      left: 117,
                                      right: 117,
                                      top: 21.5,
                                      bottom: 21),
                                  child: ElevatedButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      backgroundColor:
                                          MaterialStateProperty.all(
                                              const Color.fromRGBO(
                                                  224, 229, 255, 1)),
                                      shape: MaterialStateProperty.all(
                                        RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            side: const BorderSide(
                                                color: Color.fromRGBO(
                                                    26, 26, 28, 1))),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Submit',
                                        style: GoogleFonts.montserrat(
                                            textStyle: const TextStyle(
                                                color: Color.fromRGBO(
                                                    16, 16, 16, 1),
                                                fontSize: 15,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ]),
              ),
            ),
          ],
        ));
  }
}
