

//import 'dart:ffi';

import 'package:flutter/material.dart';
//import 'package:get/get.dart';

// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


// ignore: must_be_immutable
class MyWidget extends StatelessWidget {
   MyWidget({super.key});
  
  get context => null;
    
    TextEditingController _dateController =TextEditingController();

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
          padding: const EdgeInsets.only(left: 34,top:19),)
      
        
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
    
        
      
     
      body:Container(
         decoration: BoxDecoration
         (borderRadius: BorderRadius.only
         (topLeft: Radius.circular(30),topRight: Radius.circular(30)),
         gradient: LinearGradient(begin: Alignment.topCenter,
         end:Alignment.bottomCenter,
          colors: [
          Color.fromRGBO(242, 243, 255, 1),
           Color.fromRGBO(184, 186, 217, 1)
         ]),
        // color: Color.fromRGBO(227, 229, 250, 1),
         boxShadow:[ BoxShadow(
              color: Color.fromRGBO(0, 0, 0, 0.25),
              offset:Offset(10, 10),blurRadius: 20
             )] ),
        height: 636,
        margin: EdgeInsets.only(left: 0,right: 0),
      
      

      
        child:Column(
          children:[
            Container(
          child: Text('Apply for leave',
           style:GoogleFonts.montserrat(
            textStyle: TextStyle(
              color: Color.fromRGBO(16, 16, 16, 1),
              fontSize: 17 ,
              fontWeight: FontWeight.bold)),
              
              ),
              margin: EdgeInsets.only(top:30,right:280),
              ),
              
       
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
            
             height: 385 ,
             margin: EdgeInsets.only(left: 20,right: 20,top: 20),


             child: Column( 
              children:[

                Container(

          decoration:BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            gradient: LinearGradient(begin: Alignment.topCenter,
            end:Alignment.bottomCenter,
            colors:[
              Color.fromRGBO(207, 211, 237, 1 ),
              Color.fromRGBO(238, 240, 255, 1)
            ],),
            boxShadow:[ BoxShadow(
           color: Color.fromRGBO(0, 0, 0, 0.25),
           offset:Offset(10, 10),blurRadius: 20
             )],
              
            ),
            
             height: 44,
             width: double.infinity,
             margin: EdgeInsets.only(left: 17,right: 17,top: 30,),

             // padding:EdgeInsets.only(bottom: 5,left: 150,right: 10),
             child: Row(
             children:[ 
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
                    radius:17,
                    child:Container(
                      decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(221, 225, 231, 1),
                      Color.fromRGBO(250, 251, 252, 1),
                      
                      
                    ]),
                    
                  ),
                  child: Icon (Icons.exit_to_app_rounded,
                  color: Color.fromRGBO(62, 64, 115, 1),
                  ),
                  alignment: Alignment.center,
                    )
                  ),
               
                  alignment: Alignment.center,  
                 ),
              
                ),
                
              
             
             Container(
              width: 30,
             ),
              Expanded(
                child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Leave Type',   
                
              ),

              style: GoogleFonts.montserrat(fontSize: 15,fontWeight: FontWeight.w600),
              
             ),
             
                )
             
             ], )
             ),
                
        
             Container(

          decoration:BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
             gradient: LinearGradient(begin: Alignment.topCenter,
            end:Alignment.bottomCenter,
            colors:[
              Color.fromRGBO(207, 211, 237, 1 ),
              Color.fromRGBO(238, 240, 255, 1)
            ],),
            boxShadow:[ BoxShadow(
           color: Color.fromRGBO(0, 0, 0, 0.25),
           offset:Offset(10, 10),blurRadius: 20
             )
             ],  
            ),
            
             height: 44,
             margin: EdgeInsets.only(left: 17,right: 17,top: 16,),
            child: Row(
              children: [
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
                  child: Icon (Icons.calendar_month_rounded,
                  color: Color.fromRGBO(62, 64, 115, 1),
                  ),
                  alignment: Alignment.center,
                    )
                  ),
               
                  alignment: Alignment.center,  
                 ),
              
                ),
                
              
             
            
                Container(
              width: 30,
             ),
              Expanded(
                child: TextField(
                  controller: _dateController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Date from',   
                
              ),

              style: GoogleFonts.montserrat(fontSize: 15,fontWeight: FontWeight.w600),
              onTap: () async {
              
                // ignore: unused_local_variable
                DateTime? datePicked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(), 
                  firstDate: DateTime(2000), 
                  lastDate: DateTime(2100),
                  );

              },
             
             ),
             
                )
             ], )
             ),
               

            
         


         

         Container(

          decoration:BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            gradient: LinearGradient(begin: Alignment.topCenter,
            end:Alignment.bottomCenter,
            colors:[
              Color.fromRGBO(207, 211, 237, 1 ),
              Color.fromRGBO(238, 240, 255, 1)
            ],),
            boxShadow:[ BoxShadow(
           color: Color.fromRGBO(0, 0, 0, 0.25),
           offset:Offset(10, 10),blurRadius: 20
             )],
              
            ),
            
             height: 44,
             margin: EdgeInsets.only(left: 17,right: 17,top: 16,),
             child: Row(
              children: [
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
                  child: Icon (Icons.calendar_month_rounded,
                  color: Color.fromRGBO(62, 64, 115, 1),
                  ),
                  alignment: Alignment.center,
                    )
                  ),
               
                  alignment: Alignment.center,  
                 ),
              
                ),
                
              
             
              Container(
              width: 30,
             ),
              Expanded(
                child: TextField(
                  controller: _dateController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Date from',   
                
              ),

              style: GoogleFonts.montserrat(fontSize: 15,fontWeight: FontWeight.w600),
              onTap: () async {
              
                // ignore: unused_local_variable
                DateTime? datePicked = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(), 
                  firstDate: DateTime(2000), 
                  lastDate: DateTime(2100),
                  );

              },
             
             ),
             
                )
             
             
             ], )
             ),
               

         
         Container(

          decoration:BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            gradient: LinearGradient(begin: Alignment.topCenter,
            end:Alignment.bottomCenter,
            colors:[
              Color.fromRGBO(207, 211, 237, 1 ),
              Color.fromRGBO(238, 240, 255, 1)
            ],),
            boxShadow:[ BoxShadow(
           color: Color.fromRGBO(0, 0, 0, 0.25),
           offset:Offset(10, 10),blurRadius: 20
             )],
              
            ),
            
             height: 144,
             margin: EdgeInsets.only(left: 17,right: 17,top: 16,),
             padding: EdgeInsets.only(left:70 ),
             child:TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Details' 
              ),
              maxLines: 6,
              style: GoogleFonts.montserrat(fontSize: 15,fontWeight: FontWeight.w600),
              
             ),
         ),
         ])
          
         
          
        ),
         Center(
        
     child: Container(
          // decoration:BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(30)),color: Color.fromRGBO(62, 64, 115, 1),boxShadow:[ BoxShadow(
         //  color: Color.fromRGBO(0, 0, 0, 0.25),offset:Offset(10, 10),blurRadius: 20
          //   )],
              
           // ),
           color: Color.fromRGBO(62, 64, 115, 1),
          
        //  margin: EdgeInsets.only(left: 0,right: 0,top: 46),

        )
        
        ),
        Expanded( 
     child: Container(

          decoration:BoxDecoration(borderRadius: BorderRadius.only(topLeft:Radius.circular(30),
          topRight: Radius.circular(30)),color: Color.fromRGBO(62, 64, 115, 1),
         // boxShadow:[ BoxShadow(
         //  color: Color.fromRGBO(0, 0, 0, 0.25),
          // offset:Offset(10, 10),blurRadius: 20
          //   )],
              
            ),
            
             height: 92,
             width: double.infinity,
             margin: EdgeInsets.only(top:27, left: 0,right: 0,bottom: 0),
             padding: EdgeInsets.only(bottom: 10,top:10,right: 10,left: 10),
              //Text('Apply for leave',style:GoogleFonts.poppins(textStyle: TextStyle(color: Color.fromRGBO(16, 16, 16, 1),fontSize: 15 ,)),textAlign:TextAlign.left,),
              
         child: Container(
                decoration:BoxDecoration( borderRadius: 
              BorderRadius.all(Radius.circular(10)),
              color: Color.fromRGBO(227, 229, 250, 1),
              boxShadow:[ BoxShadow(
           color: Color.fromRGBO(0, 0, 0, 0.25),offset:Offset(10, 10),blurRadius: 20
             )],
             
              
            ),
            
             height: 20,
             width:158,
             margin: EdgeInsets.only(left: 150,right: 150,top: 21.5,bottom:21),

             child:ElevatedButton(onPressed: (){}, 
            style:ButtonStyle(
               backgroundColor:MaterialStateProperty.all(Color.fromRGBO(224, 229, 255, 1)) ,
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                  side: BorderSide(color: Color.fromRGBO(26, 26, 28, 1))
              ),
              ),
             
            ),

              

             
              child: Center(
                  child:Text(
                
                'Submit',
                style:GoogleFonts.montserrat(
                  textStyle: TextStyle(
                    color: Color.fromRGBO(16, 16, 16, 1),
                    fontSize: 15 ,
                    fontWeight: FontWeight.bold)),
                    //textAlign:TextAlign.center,

                    ),
              ),
               
               ),)
       ) )]),
      
      
      )
      
    );
    
  }
  
}