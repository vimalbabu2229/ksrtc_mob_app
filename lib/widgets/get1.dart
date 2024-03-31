
// import 'package:flutter/material.dart';
// //import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';

// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       drawer: Drawer(
        
        
//         backgroundColor: Color.fromRGBO(171, 113, 113, 1),
//       ),
//       appBar: AppBar(
        
//           title: Text('Home',style: GoogleFonts.poppins(textStyle: TextStyle(color: Color.fromRGBO(255, 255, 255, 1),fontSize: 23)),) ,
          
        
//         backgroundColor: Color.fromRGBO( 164, 6, 6,1),
//         shape:RoundedRectangleBorder(
//                borderRadius: BorderRadius.only(
//                 bottomLeft: Radius.circular(10),
//                bottomRight: Radius.circular(10)
        
//                )
//                ),
//               //  leading: IconButton(onPressed: (){
//               //   Scaffold.of(context).openDrawer();
//               //  }, icon: const Icon(Icons.menu),color: Color.fromRGBO(255, 255, 255 ,1),),
               
//       ),
//        body: Column(
        
            
            
//             children:[ 
//               Container(
//                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
                
//                 height: 100,
                
//                 child: ListView.builder(
//                   scrollDirection: Axis.horizontal,
//                   itemCount: 30,
//                   itemBuilder:(context,index){
//                     return Container(
//                       decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Color.fromRGBO(234, 234, 234, 1),border:Border.all(color: Color.fromRGBO(0, 0, 0, .25)),boxShadow:[BoxShadow(color: Color.fromRGBO(0, 0, 0, .5))]),
                     
//                       height: 80,
//                       width: 45,
                      
//                       margin: EdgeInsets.all(10),
//                     );
//                   }),
                  
//               ),
//               Column(
                
//                 children: [
//                   Container(
//                   child:Text('Schedules for today',style:GoogleFonts.poppins(textStyle: TextStyle(color: Color.fromRGBO(16, 16, 16, 1),fontSize: 15 ,)),textAlign:TextAlign.left,),
//                  alignment: Alignment.topLeft, 
//                  padding: EdgeInsets.all(10),
//                  margin:EdgeInsets.only(bottom: 20,top:30) ,
//                  )
                
//                 ],
                
//               ),
//               Expanded(child: ListView.builder(
//                 itemCount: 10,
//                 itemBuilder:(context,index){ 
//              return Container(
//                decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10)),color: Color.fromRGBO(255, 201, 201, 1),boxShadow:[BoxShadow(color: Color.fromRGBO(226, 217, 217, 1))],border:Border.all(color: Color.fromRGBO(0, 0, 0, .25))),
//               height: 100,
//              width:double.infinity,
//              margin:EdgeInsets.only(left: 18,right: 18,bottom: 53,),
//              padding: EdgeInsets.all(20),
             
             
            
                    
//             );
            
//            } ))
//             ]

//           ),
          
        

//       );
      
//   }
// }
