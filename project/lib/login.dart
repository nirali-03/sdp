import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
class MyLogin extends StatefulWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  State<MyLogin> createState() => _MyLoginState();
}

class _MyLoginState extends State<MyLogin> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
         image: DecorationImage(
          image: AssetImage('assets/bgimage.jpg'),
           fit: BoxFit.cover,
             colorFilter: ColorFilter.mode(Colors.black54,BlendMode.darken),
         ),
      ),

        // gradient: LinearGradient(
        //     colors: [
        //       const Color(0xFF3366FF),
        //       const Color(0xFF00CCFF),
        //     ],
        //     begin: const FractionalOffset(0.0, 0.0),
        //     end: const FractionalOffset(1.0, 0.0),
        //     stops: [0.0, 1.0],
        //     tileMode: TileMode.clamp),


      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
            children:[
              Container(
                 padding: EdgeInsets.only(left:40,top:130),
                 child: Text('Welcome To  ChitrHub ',
                 style: TextStyle( color: Colors.white, fontSize: 33,fontFamily: HttpHeaders.acceptRangesHeader,)
                 ),
              ),

              SingleChildScrollView(
                child: Container(
                  padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.5 ,right: 30,left: 30),
                  child: Column(
                     children: [
                       TextField(
                         decoration: InputDecoration(
                             fillColor: Colors.grey.shade100,
                             filled: true,
                           hintText:'User Name',
                           border: OutlineInputBorder(
                             borderRadius: BorderRadius.circular(5)
                           )
                         ),
                       ),
                       SizedBox(
                         height: 30,
                       ),

                       TextField(
                         obscureText: true,
                         decoration: InputDecoration(
                             fillColor: Colors.grey.shade100,
                             filled: true,
                             hintText:'Password',
                             border: OutlineInputBorder(
                                 borderRadius: BorderRadius.circular(5)
                             )
                         ),
                       ),

                       SizedBox(
                         height: 30,
                       ),


                       Container(
                         width: double.infinity,
                         decoration: BoxDecoration(color: Colors.grey.shade100,borderRadius: BorderRadius.circular(10),),
                         child: TextButton(
                           onPressed: (){},
                           child: Text('Submit',style: TextStyle(fontSize: 18,color: Colors.black54,),
                           ),
                         ),
                       ),

                       SizedBox(
                         height: 20,
                       ),


                TextButton(
                  onPressed: (){
                    Navigator.popAndPushNamed(context, 'Register');
                  },
                  child :Text('Ceate a new account',
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      fontSize: 20,
                      color: Colors.white70,
                    ),

                  ),
                )








                     ],
                  ),
                ),
              ),
            ],
        ),
      ),
    );
  }
}
