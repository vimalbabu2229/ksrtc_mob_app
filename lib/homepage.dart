

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:get/get.dart';
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
          gradient: LinearGradient(begin: Alignment.topCenter,
         end:Alignment.bottomCenter,
          colors: [
          Color.fromRGBO(242, 243, 255, 1),
           Color.fromRGBO(184, 186, 217, 1)
         ]),
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
              softWrap: false,
              
              ),
              margin: EdgeInsets.only(left:20,top:41, ),
              padding: EdgeInsets.only(right:300),
              
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
                padding: EdgeInsets.all(10),
                
                child: Text(' Steering Duty : 8:35',
                style: GoogleFonts.montserrat(
                  textStyle:TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 0.6),
                  fontSize: 15,
                  fontWeight: FontWeight.w600
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
                padding: EdgeInsets.all(10),

                child: Text('Spread Over : 8:35',
                style: GoogleFonts.montserrat(
                 textStyle:TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 0.6),
                  fontSize: 15,
                  fontWeight: FontWeight.w600
                  
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
                padding: EdgeInsets.all(10),

                child: Text('Companion : Aneesh Kumar',
                style: GoogleFonts.montserrat(
                  textStyle:TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 0.6),
                  fontSize: 15,
                  fontWeight: FontWeight.w600
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
                padding: EdgeInsets.all(10),

                child: Text('Vehicle : RY56783',
                style: GoogleFonts.montserrat(
                  textStyle:TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 0.6),
                   fontSize: 15,
                   fontWeight: FontWeight.w600
                  ),),
                  textAlign:TextAlign.center
                  ),
                )
              ],
             ),

      ),

      Expanded(child: 
      Container(

          decoration:BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(30),
          topRight: Radius.circular(30)), gradient: LinearGradient(begin: Alignment.topLeft,
            end:Alignment.bottomRight,
            colors:[
              Color.fromRGBO(62, 64, 115, 1 ),
              Color.fromRGBO(43, 45, 84, 1)
            ],)
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
               decoration: BoxDecoration(  gradient: LinearGradient(begin: Alignment.topLeft,
            end:Alignment.bottomRight,
            colors:[
              Color.fromRGBO(62, 64, 115, 1 ),
              Color.fromRGBO(43, 45, 84, 1)
            ],),
            border:Border(
                bottom: BorderSide(width: 1,color: Color.fromRGBO(255, 255, 255, 0.6),),
               )),
              height: 112,
             width:double.infinity,
               child:Column(
                
               children:[
                Container(
                  height: 15,
                ),
                
                Row(
                
                 children: [
                  
                  Padding(padding: EdgeInsets.only(left: 20,)),
                  
                CircleAvatar(
                  
                  child: Container(
                      decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(255, 255, 255, 1),
                      Color.fromRGBO(198, 200, 222, 1),  

                    ]),
                    
                  ),
                  child: CircleAvatar(
                    radius: 17,
                    child: Container(
                       decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(221, 225, 231, 1),
                      Color.fromRGBO(250, 251, 252, 1),
                      
                      
                    ]),
                    
                  ),
                  child: Icon (Icons.schedule_send,
                  color: Color.fromRGBO(62, 64, 115, 1),
                  ),
                  alignment: Alignment.center,
                  
                    )
                  ),
                  alignment: Alignment.center,  
                  
                 ),
                 
                ),
                
              
              
             
             Container(
              width: 95,
              child: Text('3:40\nParassala',style: GoogleFonts.montserrat(
                  textStyle:TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  
                  )
                  ),
                  softWrap: false,
                  
                  ),
                  padding: EdgeInsets.only(left: 16),
             ),
             Container(
              width: 95,
              child: Text('NH',style: GoogleFonts.montserrat(
                  textStyle:TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  
                  ),
                  
                  ),
                  softWrap: false,
                  
                  
                  ),
                  padding: EdgeInsets.only(left: 70),
                 
                  alignment: Alignment.center,
                  
             ),
             Expanded(child: 
             Container(
            width: 50,
              child: Text('3:45\nKalikkavila',style: GoogleFonts.montserrat(
                  textStyle:TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  )),
                  softWrap: false,
                  ),
                  padding: EdgeInsets.only(right: 20),
                margin: EdgeInsets.only(left:140,),
             ),),
             
             
             ]
             
               ),
               Container(
              
                child: Text('Running Time  - 5 mins ',
                style: GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    color:Color.fromRGBO(255, 255, 255, 0.5),
                    fontSize: 15,fontWeight: FontWeight.w400
                  )
                ),),
                padding: EdgeInsets.only(top:4),
               )
               ],),

               );},) )
                    

            ],)
              
              
))]) )  );
  }
}