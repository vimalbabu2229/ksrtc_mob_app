import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(
        0xffCACFE8,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        const ProfileHeadSection(),
        Container(
          height: 370,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xffCFD3ED),
                  Color(0xffEEF0FF),
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              borderRadius: BorderRadius.all(Radius.circular(25))),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ProfileListTile(
                  icon: 1, title: "Email", subtitle: "alex@gmail.com"),
              ProfileListTile(
                  icon: 2, title: "Phone", subtitle: "+91 8344567321"),
              ProfileListTile(
                  icon: 3, title: "PEN Number", subtitle: "RY 44"),
              ProfileListTile(
                icon: 4,
                title: "Total hours of work",
                subtitle: "150 hrs",
                selecticon: true,
              ),
              ProfileListTile(
                  icon: 5, title: "Date of Joining", subtitle: "16/10/2020"),
            ],
          ),
        ),
        Container(
          height: 75,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xff3E4073),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
          child: Center(
            child: SizedBox(
              // margin: const EdgeInsets.all(20),
              height: 40,
              width: 150,
              child: Stack(
                children: [
                  Image.asset('assets/profile/Button.png', fit: BoxFit.fill),
                  Center(
                      child: InkWell(
                        onTap: () {
                          //when applied for leave
                        },
                        child: Text(
                                            "Apply For Leave",
                                            style: GoogleFonts.montserrat(
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                                          ),
                      ))
                ],
              ),
            ),
          ),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/profile/b1.png',
                height: 20,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/profile/b2.png',
                height: 20,
              ),
              label: 'Notification'),
          BottomNavigationBarItem(
              icon: Image.asset(
                'assets/profile/b3.png',
                height: 20,
              ),
              label: 'Profile'),
        ],
        backgroundColor: const Color(0xffBFC8EC),
        selectedLabelStyle: GoogleFonts.montserrat(
            color: const Color.fromRGBO(0, 0, 0, 1), fontSize: 12),
        unselectedLabelStyle: GoogleFonts.montserrat(
            color: const Color.fromRGBO(0, 0, 0, 1), fontSize: 12),
        currentIndex: 2,
      ),
    );
  }
}

class ProfileListTile extends StatelessWidget {
  final String title, subtitle;
  final int icon;
  final bool selecticon;
  const ProfileListTile({
    super.key,
    required this.icon,
    required this.title,
    required this.subtitle,
    this.selecticon = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(
        'assets/profile/Icon$icon.png',
        height: 40,
      ),
      title: Text(
        title,
        style: GoogleFonts.montserrat(
            color: const Color.fromRGBO(0, 0, 0, .6), fontSize: 15),
      ),
      subtitle: selecticon
          ? Row(
              children: [
                Text(
                  subtitle,
                  style: GoogleFonts.montserrat(
                      color: const Color.fromRGBO(0, 0, 0, .6), fontSize: 15),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20),
                  height: 17,
                  width: 78,
                  decoration: const BoxDecoration(
                      color: Color(0xff363867),
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: const Row(
                    children: [
                      Text("--select--",style: TextStyle(color: Colors.white),),
                      Icon(Icons.keyboard_arrow_down_rounded,color: Colors.white
                      
                      ,)
                    ],
                  ),
                )
              ],
            )
          : Text(
              subtitle,
              style: GoogleFonts.montserrat(
                  color: const Color.fromRGBO(0, 0, 0, .4), fontSize: 15),
            ),
    );
  }
}

class ProfileHeadSection extends StatelessWidget {
  const ProfileHeadSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 310,
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xff3E4073),
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(35),
                bottomLeft: Radius.circular(35)),
          ),
          child: Padding(
              padding: const EdgeInsets.only(
                top: 60,
                left: 30,
                bottom: 30,
                right: 30,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                       Padding(
                        padding: const EdgeInsets.all(10),
                        child: InkWell(
                          onTap: () {
                            // on tap settings
                          },
                          child: const Icon(
                            Icons.settings_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      Text(
                        "Settings",
                        style: GoogleFonts.montserrat(
                          color: const Color(0xffD9D9D9),
                        ),
                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 86,
                        width: 86,
                        alignment: Alignment.bottomCenter,
                        decoration: const BoxDecoration(
                            color: Color(0xFF2D3058), shape: BoxShape.circle),
                        child: Container(
                          height: 76,
                          width: 76,
                          decoration: const BoxDecoration(
                            color: Color(0xffD9D9D9),
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            'assets/profile/profilephoto.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        'Driver',
                        style: GoogleFonts.montserrat(
                            color: const Color(0xFFD9D9D9),
                            fontSize: 30,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'PY252',
                        style: GoogleFonts.montserrat(
                            color: const Color.fromRGBO(217, 217, 217, .6),
                            fontSize: 27,
                            fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                          padding: const EdgeInsets.all(10),
                          child: InkWell(
                            onTap: () {
                              //on edit profile
                            },
                            child: Image.asset(
                              'assets/profile/editprofile.png',
                              fit: BoxFit.cover,
                              height: 30,
                            ),
                          )),
                      Text(
                        "Edit Profile",
                        style: GoogleFonts.montserrat(
                          color: const Color(0xffD9D9D9),
                        ),
                      )
                    ],
                  ),
                ],
              )),
        ),
        Container(
          height: 310,
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromRGBO(26, 28, 53, .2),
              Color.fromRGBO(26, 28, 53, 0)
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(35),
                bottomLeft: Radius.circular(35)),
          ),
        )
      ],
    );
  }
}
