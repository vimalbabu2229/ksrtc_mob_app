

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromRGBO(177, 184, 222, 11),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(177, 184, 222, 1) ,
        toolbarHeight: 57,
     ), 
      bottomNavigationBar: GNav(
        tabs:[
          GButton(
            icon: Icons.home,
            text: 'Home',),
           GButton(
            icon: Icons.notifications_rounded,
            text: 'Notification',),
            GButton(
            icon: Icons.person,
            text: 'Profile',),
        ]
      ),
      body: Container(
         decoration: BoxDecoration
         (borderRadius: BorderRadius.only
         (topLeft: Radius.circular(30),topRight: Radius.circular(30)),
         color: Color.fromRGBO(227, 229, 250, 1),
         boxShadow:[ BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              offset:Offset(10, 10),blurRadius: 20
             )] ),
        height: 636,
        margin: EdgeInsets.only(left: 0,right: 0),
      
       child:Column(
          children:[
         
          
          Container(
            child: Text('Today’s Schedule  ',
            style:GoogleFonts.montserrat(
             textStyle: TextStyle(
             color: Color.fromRGBO(16, 16, 16, 1),
              fontSize: 17 ,
              fontWeight: FontWeight.bold)),
              
              ),
              margin: EdgeInsets.only(top:41,right:350),
             )
        ,

          
              
       
         Container(
          
          decoration:BoxDecoration(
           borderRadius: BorderRadius.all
          (Radius.circular(30)),
            color: Color.fromRGBO(227, 229, 250, 1),
            boxShadow:[ BoxShadow(
           color: Color.fromRGBO(0, 0, 0, 0.25),
           offset:Offset(10, 10),blurRadius: 20
             )],
              
            ),
            
             height: 196 ,
             margin: EdgeInsets.only(left: 20,right: 20,top: 15),
             child: Column(
              children: [

                Container(
                  
                   decoration: BoxDecoration( borderRadius:
                    BorderRadius.all(Radius.circular(30)),
                    color: Color.fromRGBO(227, 229, 250, 1),
                   border:Border(
                )),
                height: 47,
                width: double.infinity,

                child: Text('\n Steering Duty : 8:35',
                style: GoogleFonts.montserrat(
                  textStyle:TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 0.6),
                  fontSize: 15
                  ),),textAlign:TextAlign.center),
                ),

                Container(
                   decoration: BoxDecoration( color: Color.fromRGBO(227, 229, 250, 1),
                   border:Border(
                bottom: BorderSide
                (width: .7,color: Color.fromRGBO(0, 0, 0, 0.1),),
                top:BorderSide(
                   width: .7,color: Color.fromRGBO(0, 0, 0, 0.1),
                ) )),
                height: 47,
                width: double.infinity,

                child: Text('\nSpread Over : 8:35',
                style: GoogleFonts.montserrat(
                 textStyle:TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 0.6),
                  fontSize: 15,
                  
                  ),),textAlign:TextAlign.center
                  ),
                ),


                Container(
                   decoration: BoxDecoration( color: Color.fromRGBO(227, 229, 250, 1),
                   border:Border(
                bottom: BorderSide
                (width: .7,color: Color.fromRGBO(0, 0, 0, 0.1),))),
                height: 47,
                width: double.infinity,

                child: Text('\nCompanion : Aneesh Kumar',
                style: GoogleFonts.montserrat(
                  textStyle:TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 0.6),
                  fontSize: 15
                  ),),
                  textAlign:TextAlign.center
                  ),
                ),


                Container(
                   decoration: BoxDecoration(  borderRadius:
                    BorderRadius.all(Radius.circular(30)),color: Color.fromRGBO(227, 229, 250, 1),
                   border:Border(
                bottom: BorderSide
                (width: .7,color: Color.fromRGBO(0, 0, 0, 0.1),))),
                height: 55,
                width: double.infinity,

                child: Text('\nVehicle : RY56783',
                style: GoogleFonts.montserrat(
                  textStyle:TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 0.6),
                  
                  fontSize: 15
                  ),),
                  textAlign:TextAlign.center
                  ),
                )
              ],
             ),

      ),

      
      Container(

          decoration:BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(30),
          topRight: Radius.circular(30)),color: Color.fromRGBO(62, 64, 115, 1),
         // boxShadow:[ BoxShadow(
         //  color: Color.fromRGBO(0, 0, 0, 0.25),
          // offset:Offset(10, 10),blurRadius: 20
          //   )],
              
            ),
            
             height: 302,
             width: double.infinity,
             margin: EdgeInsets.only(left: 0,right: 0,top: 28,bottom: 0),
             child:
             Column(
              children: [
              Container(
                 child: Text('Schedules',
            style:GoogleFonts.montserrat(
             textStyle: TextStyle(
             color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: 17 ,
              
              fontWeight: FontWeight.bold)),),alignment: Alignment.topLeft,
               margin: EdgeInsets.only(top:20,left: 20 ),
              ),
               Expanded(child:ListView.builder(
                          itemCount: 10,
                          
                itemBuilder:(context,index){ 
             return Container(
               decoration: BoxDecoration( color: Color.fromRGBO(62, 64, 115, 1),border:Border(
                bottom: BorderSide(width: 1,color: Color.fromRGBO(255, 255, 255, 0.6),),
               )),
              height: 100,
              
             width:double.infinity,
               );},) )
                    

            ],)
              
              
)]) )  );
  }
}