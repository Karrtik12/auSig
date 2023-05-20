import 'package:flutter/material.dart';
import 'splash.dart';

void main() {
  runApp( MyApp());
}
class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Builder(
          builder: (context) {
            return Scaffold(
              backgroundColor: Color(0XFFF5EAE3),
              body: Center(
                child: Padding(

                    padding: const EdgeInsets.only(bottom: 100),

                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          Container(
                            constraints: BoxConstraints(maxWidth: 350, maxHeight: 350),
                            child: Image.asset(
                              'images/welcome.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                          Text(
                            "Welcome",
                            style: TextStyle(
                                fontSize: 45.0,
                                fontFamily: 'Anton',
                                letterSpacing: 2
                                // fontWeight: FontWeight.bold
                            ),
                          ),

                          Padding(
                            padding:
                            EdgeInsets.only(left: 64, right: 64, top: 16, bottom: 20),
                            child: Text(
                              "Translate Effortlessely with Au-Sig",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontSize: 21.0,
                                  fontFamily: 'Dosis',
                                  letterSpacing: 3,
                                  fontWeight:FontWeight.w700
                              ),
                            ),
                          ),
                          TextButton(

                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => splash()),
                              );
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Color(0xFF17262A),
                              padding: const EdgeInsets.all(13.0),
                              textStyle: const TextStyle(fontSize: 20),
                            ),
                            child:Text(

                                'Translate',
                                style:TextStyle(letterSpacing: 3,color: Color(0XFFF5EAE3),fontFamily: 'Dosis',
                                    fontWeight:FontWeight.w700) ,
                            ),

                          )
                        ]
                    )
                ),
              ),
            );
          }
        )
    );
  }
}


