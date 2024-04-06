import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ksrtc_mob_app/models/post.dart';
import 'package:ksrtc_mob_app/services/remote_service.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});

  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}

class _ScheduleScreenState extends State<ScheduleScreen> {
  List<Post>? posts;
  var isLoaded = false;

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    posts = await RemoteService().getPosts();
    if (posts != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffCACFE8),
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.1),
                offset: Offset(0, -1),
                blurRadius: 1,
              ),
            ],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFFF2F3FF), // #F2F3FF
                Color(0xFFB8BAD9), // #B8BAD9
              ],
              stops: [0.0912, 0.3915],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 22, 0, 10),
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
                            child: Visibility(
                          visible: isLoaded,
                          replacement: const Center(
                            child: CircularProgressIndicator(
                              color: Colors.white,
                            ),
                          ),
                          child: ListView.builder(
                            // itemCount: posts?.length,
                            itemCount: 10,
                            itemBuilder: (context, index) {
                              return Container(
                                padding:
                                    const EdgeInsets.only(left: 10, right: 10),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          0, 25, 0, 25),
                                      child: Image.asset(
                                          'assets/profile/Icon3.png'),
                                    ),
                                    Column(
                                      children: [
                                        Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      10, 13, 20, 10),
                                              child: Text(
                                                '${posts![index].id}3:40\n${posts![index].title.substring(0, 10)}',
                                                //'3:40\nParassala',
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
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      10, 13, 20, 10),
                                              child: Text(
                                                posts![index]
                                                    .body
                                                    .substring(5, 7),
                                                //'NH',
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
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      10, 13, 0, 10),
                                              child: Text(
                                                '${posts![index].id}3:45\n${posts![index].title.substring(0, 8)}',
                                                //'${posts![index].id}3:45\nKaliyikkavila',
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
                                          'Running Time  - ${posts![index].id} mins ',
                                          // 'Running Time  - 5 mins ',
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
                          ),
                        ))
                      ],
                    )),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
