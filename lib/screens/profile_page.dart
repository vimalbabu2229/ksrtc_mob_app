import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffCACFE8),
      body: Column(
        children: [
          Column(
            children: [
              Container(
                height: 230,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Color(0xff3E4073),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(35),
                    bottomLeft: Radius.circular(35),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 40,
                    left: 30,
                    bottom: 20,
                    right: 30,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.settings_outlined),
                            iconSize: 30,
                            color: Colors.white,
                            onPressed: () {},
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 86,
                            width: 86,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.circle,
                            ),
                            child: const CircleAvatar(
                              radius: 40,
                              backgroundImage: AssetImage(
                                'assets/profile/profilephoto.png',
                              ),
                            ),
                          ),
                          Text(
                            'Allen',
                            style: GoogleFonts.montserrat(
                              color: const Color(0xFFD9D9D9),
                              fontSize: 28,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Driver',
                            style: GoogleFonts.montserrat(
                              color: const Color.fromRGBO(217, 217, 217, .6),
                              fontSize: 25,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          IconButton(
                            icon: const Icon(Icons.mode_edit_outlined),
                            iconSize: 30,
                            color: Colors.white,
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              //details cotainer
              Container(
                padding: const EdgeInsets.only(
                    left: 10, right: 10, top: 4, bottom: 4),
                height: 300,
                width: 360,
                decoration: BoxDecoration(
                  boxShadow: const [
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
                  gradient: const LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xFFCFD3ED),
                      Color(0xFFEEF0FF),
                    ],
                    stops: [0.0, 1.0],
                  ),
                  borderRadius: BorderRadius.circular(25),
                ),
                child: ListView(
                  children: [
                    //email box
                    Container(
                        padding:
                            const EdgeInsets.only(left: 5, bottom: 10, top: 10),
                        height: 66,
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          width: .7,
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                        ))),
                        child: Row(
                          children: [
                            Image.asset('assets/profile/Icon1.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Email',
                                  style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text('allen@gmail.com',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 15,
                                    )),
                              ],
                            )
                          ],
                        )),
                    //phone
                    Container(
                        padding:
                            const EdgeInsets.only(left: 5, bottom: 10, top: 10),
                        height: 66,
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          width: .7,
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                        ))),
                        child: Row(
                          children: [
                            Image.asset('assets/profile/Icon2.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Phone',
                                  style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text('+91 9876528423',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 15,
                                    ))
                              ],
                            )
                          ],
                        )),
                    //pen no.
                    Container(
                        padding:
                            const EdgeInsets.only(left: 5, bottom: 10, top: 10),
                        height: 66,
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          width: .7,
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                        ))),
                        child: Row(
                          children: [
                            Image.asset('assets/profile/Icon3.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'PEN Number',
                                  style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text('RY44',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 15,
                                    ))
                              ],
                            )
                          ],
                        )),
                    //hours of work
                    Container(
                        padding:
                            const EdgeInsets.only(left: 5, bottom: 10, top: 10),
                        height: 66,
                        decoration: const BoxDecoration(
                            border: Border(
                                bottom: BorderSide(
                          width: .7,
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                        ))),
                        child: Row(
                          children: [
                            Image.asset('assets/profile/Icon4.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Total hours of work',
                                  style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text('150 hours',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 15,
                                    ))
                              ],
                            ),
                            // Padding(
                            //   padding: const EdgeInsets.only(left: 20),
                            //   child: DropdownButton<String>(
                            //     value: selectedValue,
                            //     onChanged: (value) {},
                            //     items: const [
                            //       DropdownMenuItem(
                            //         value: 'Option 1',
                            //         child: Text('Option 1'),
                            //       ),
                            //       DropdownMenuItem(
                            //         value: 'Option 2',
                            //         child: Text('Option 2'),
                            //       ),
                            //       DropdownMenuItem(
                            //         value: 'Option 3',
                            //         child: Text('Option 3'),
                            //       ),
                            //     ],
                            //   ),
                            // )
                          ],
                        )),
                    //date of join
                    Container(
                        padding:
                            const EdgeInsets.only(left: 5, bottom: 10, top: 10),
                        height: 66,
                        child: Row(
                          children: [
                            Image.asset('assets/profile/Icon5.png'),
                            const SizedBox(
                              width: 10,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Date of joining',
                                  style: GoogleFonts.montserrat(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                Text('16/10/2020',
                                    style: GoogleFonts.montserrat(
                                      color: Colors.black,
                                      fontSize: 15,
                                    ))
                              ],
                            )
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 15),

          // Apply btn
          Expanded(
              child: Container(
            decoration: const BoxDecoration(
              color: Color(0xff3E4073),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Center(
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(const Color(0xffE0E5FF)),
                  shape: MaterialStateProperty.all<OutlinedBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(13)),
                  ),
                ),
                onPressed: () {},
                child: Text('Apply for leave',
                    style: GoogleFonts.montserrat(
                        textStyle: const TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.w600))),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
