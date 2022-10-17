import 'package:flutter/material.dart';

class Myregister extends StatefulWidget {
  const Myregister({Key? key}) : super(key: key);

  @override
  State<Myregister> createState() => _MyregisterState();
}

class _MyregisterState extends State<Myregister> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
         image: DecorationImage(
          image: AssetImage('assets/bgimage2.png'),
           fit: BoxFit.cover,
           colorFilter: ColorFilter.mode(Colors.black54,BlendMode.darken),
         ),
      ),

      //   gradient: LinearGradient(
      //       colors: [
      //         const Color(0xFF3366FF),
      //         const Color(0xFF00CCFF),
      //       ],
      //       begin: const FractionalOffset(0.0, 0.0),
      //       end: const FractionalOffset(1.0, 0.0),
      //       stops: [0.0, 1.0],
      //       tileMode: TileMode.clamp),
      // ),

      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(
          children:[
            Container(
              padding: EdgeInsets.only(left:90,top:220),
              child: Text('Register Now  ',
                  style: TextStyle( color: Colors.white, fontSize: 33,)
              ),
            ),

            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.4 ,right: 50,left: 60,),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText:'User Name',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)
                          ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    TextField(
                      decoration: InputDecoration(

                          fillColor: Colors.grey.shade100,
                          filled: true,
                          hintText:'E-mail',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5)
                          )
                      ),
                    ),
                    SizedBox(
                      height: 20,
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
                    //
                    // Text('submit',
                    // style: TextStyle(color: Colors.black,height: 1.5,fontSize: 25),
                    // ),

                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(color: Colors.grey.shade100,borderRadius: BorderRadius.circular(15),),
                    child: TextButton(
                        onPressed: (){},
                        child: Text('Submit',style: TextStyle(fontSize: 18,color: Colors.black45,),
                        ),
                    ),
                  ),

                    SizedBox(
                      height: 30,
                    ),

                    TextButton(
                        onPressed: (){
                          //Navigator.popAndPushNamed(context, 'login');
                        },
                        child :Text('Already have anaccout?',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 20,
                            color: Colors.white70,
                          ),
                        )
                    ),



                    TextButton(
                        onPressed: (){
                          Navigator.popAndPushNamed(context, 'login');
                        },
                        child :Text('Log in',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            fontSize: 20,
                            color: Colors.white70,
                          ),
                        )
                    ),
















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
