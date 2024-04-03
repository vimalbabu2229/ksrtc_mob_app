import 'package:flutter/material.dart';

// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class LeaveScreen extends StatelessWidget {
  const LeaveScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(177, 184, 222, 11),
        appBar: AppBar(
            backgroundColor: const Color.fromRGBO(177, 184, 222, 1),
            toolbarHeight: 57,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () {},
              color: const Color.fromRGBO(56, 58, 105, 1),
              padding: const EdgeInsets.only(left: 34, top: 19),
            )),
        bottomNavigationBar: const GNav(tabs: [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.notifications_rounded,
            text: 'Notification',
          ),
          GButton(
            icon: Icons.person,
            text: 'Profile',
          ),
        ]),
        body: Container(
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
              color: Color.fromRGBO(227, 229, 250, 1),
              boxShadow: [
                BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.25),
                    offset: Offset(10, 10),
                    blurRadius: 20)
              ]),
          height: 636,
          margin: const EdgeInsets.only(left: 0, right: 0),
          child: Column(children: [
            Container(
              margin: const EdgeInsets.only(top: 30, right: 250),
              child: Text(
                'Apply for leave',
                style: GoogleFonts.montserrat(
                    textStyle: const TextStyle(
                        color: Color.fromRGBO(16, 16, 16, 1),
                        fontSize: 17,
                        fontWeight: FontWeight.bold)),
              ),
            ),
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
                height: 385,
                margin: const EdgeInsets.only(left: 20, right: 20, top: 40),
                child: Column(children: [
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
                      height: 44,
                      width: double.infinity,
                      margin: const EdgeInsets.only(
                        left: 17,
                        right: 17,
                        top: 30,
                      ),
                      child: Align(
                        alignment: Alignment.center,

                        child: Text(
                          ' Leave type',
                          style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                              color: Color.fromRGBO(16, 16, 16, 1),
                              fontSize: 15,
                              fontWeight: FontWeight.w100,
                            ),
                          ),
                        ),
                        // margin: EdgeInsets.only(top:30,right:250),
                      )),
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
                    height: 44,
                    margin: const EdgeInsets.only(
                      left: 17,
                      right: 17,
                      top: 16,
                    ),
                  ),
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
                    height: 44,
                    margin: const EdgeInsets.only(
                      left: 17,
                      right: 17,
                      top: 16,
                    ),
                  ),
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

                    height: 144,
                    margin: const EdgeInsets.only(
                      left: 17,
                      right: 17,
                      top: 16,
                    ),
                    // child: Text('Reason for Leave',style: GoogleFonts.montserrat(textStyle:TextStyle(color:Color.fromRGBO(0, 0, 0, 0.6) ),fontSize:15),),
                  ),
                ])

                //Text('Apply for leave',style:GoogleFonts.poppins(textStyle: TextStyle(color: Color.fromRGBO(16, 16, 16, 1),fontSize: 15 ,)),textAlign:TextAlign.left,),

                ),
            Center(
                child: Container(
              // decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)),color: Color.fromRGBO(62, 64, 115, 1),boxShadow:[ BoxShadow(
              //  color: Color.fromRGBO(0, 0, 0, 0.25),offset:Offset(10, 10),blurRadius: 20
              //   )],

              // ),
              color: const Color.fromRGBO(62, 64, 115, 1),

              //  margin: EdgeInsets.only(left: 0,right: 0,top: 46),
            )),
            Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30)),
                  color: Color.fromRGBO(62, 64, 115, 1),
                  // boxShadow:[ BoxShadow(
                  //  color: Color.fromRGBO(0, 0, 0, 0.25),
                  // offset:Offset(10, 10),blurRadius: 20
                  //   )],
                ),
                height: 92,
                width: double.infinity,
                margin: const EdgeInsets.only(
                  bottom: 0,
                  left: 0,
                  right: 0,
                ),
                //Text('Apply for leave',style:GoogleFonts.poppins(textStyle: TextStyle(color: Color.fromRGBO(16, 16, 16, 1),fontSize: 15 ,)),textAlign:TextAlign.left,),

                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Color.fromRGBO(227, 229, 250, 1),
                    boxShadow: [
                      BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.25),
                          offset: Offset(10, 10),
                          blurRadius: 20)
                    ],
                  ),
                  height: 20,
                  width: 158,
                  margin: const EdgeInsets.only(
                      left: 117, right: 117, top: 21.5, bottom: 21),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          const Color.fromRGBO(224, 229, 255, 1)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: const BorderSide(
                                color: Color.fromRGBO(26, 26, 28, 1))),
                      ),
                    ),
                    child: Center(
                      child: Text(
                        'Submit',
                        style: GoogleFonts.montserrat(
                            textStyle: const TextStyle(
                                color: Color.fromRGBO(16, 16, 16, 1),
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                        //textAlign:TextAlign.center,
                      ),
                    ),
                  ),
                ))
          ]),
        ));
  }
}
