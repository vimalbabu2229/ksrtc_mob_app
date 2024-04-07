import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Color.fromRGBO(177, 184, 222, 11),
      appBar: AppBar(
          backgroundColor: Color.fromRGBO(177, 184, 222, 1) ,
        toolbarHeight: 57,
        leading: IconButton( 
          icon:Icon(Icons.arrow_back_ios_new),
          onPressed: () {},
          color: Color.fromRGBO(56, 58, 105, 1),
          padding: const EdgeInsets.only(left: 34,top:19),)),
          body:Container(
            
            child:Column(
              children: [
                Container(
                   decoration: BoxDecoration
         (borderRadius: BorderRadius.only
         (topLeft: Radius.circular(30),topRight: Radius.circular(30),bottomLeft: Radius.circular(30,),bottomRight: Radius.circular(30)),
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
                  height: 200,
                  width:double.infinity,
                  child:Column(
                children:[
                  Align(
                  alignment: Alignment.topCenter,
                  
                  child: Text('About App', style:GoogleFonts.montserrat(
            textStyle: TextStyle(
              color: Color.fromRGBO(16, 16, 16, 1),
              fontSize: 17 ,
              fontWeight: FontWeight.bold,
              ),
              
              ),
              
             ),),
             Padding(padding:EdgeInsets.only(bottom: 4)),
             Text('This app is for scheduling and to help drivers and conductors to know their schedule'),
            
           
             ],),
          //   padding: EdgeInsets.only(left: 40,top:40,right: 40),
                margin: EdgeInsets.only(left:20,right:20,top: 60),
              ),
              Padding(padding: EdgeInsets.only(bottom: 100)),
              Container(
                width: 150,
                
                
           child:   ElevatedButton(onPressed: (){}, 
            style:ButtonStyle(
              
               backgroundColor:MaterialStateProperty.all( Color.fromRGBO(62, 64, 115, 1 )) ,
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                 // side: BorderSide(color: Color.fromRGBO(26, 26, 28, 1))
              ),
              ),
             
            ),

              

             
              child: Center(
                  child:Text(
                
                'Logout',
                style:GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    color: Color.fromRGBO(198, 188, 188, 1),
                    fontSize: 15 ,
                    fontWeight: FontWeight.bold)),
                    //textAlign:TextAlign.center,

                    ),
              ),
               
               )
               
               )

              ],
            )
          ) ,
    );
  }
}