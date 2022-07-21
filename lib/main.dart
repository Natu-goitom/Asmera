import 'package:auth_screen/constants.dart';
import 'package:auth_screen/signin_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Auth Screen 1',
      theme: ThemeData(
        brightness:Brightness.dark,
        primaryColor: kPrimaryColor,
        scaffoldBackgroundColor: kBackgroundColor,
        textTheme:TextTheme(
          headline4: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,
         ),
         button: TextStyle(color: kPrimaryColor,
         ),
         headline1:TextStyle(color:Colors.white, fontWeight: FontWeight.normal), 
         ),
      ),
      home: WelcomeScreen(),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  // const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: <Widget>[
          Expanded(
            flex: 3,
            child:Container(
              decoration:BoxDecoration(
               image:DecorationImage(image:AssetImage("assets/perosn.jpeg"),
            fit:BoxFit.cover,
            ),

            ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:<Widget> [
                RichText(
                  textAlign:TextAlign.center,
                  text:TextSpan(
                 children: [
                  TextSpan(
                  text:"BAKING LESSONS\n",
                  style:Theme.of(context)
                  .textTheme
                  .headline4,
                  
                 ),
                 TextSpan(text: "MASTER THE ART OF BAKING",
                 style: Theme.of(context).textTheme.headline5,
                 ),
                 ],
                  ),
                  ),
                  FittedBox(
                    child: GestureDetector(
                      onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) {
                          return signInScreen();
                        },
                      ));
                    },
                      child: Container(
                        margin: EdgeInsets.only(bottom: 25),
                        padding:EdgeInsets.symmetric(horizontal: 26,vertical:16),
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),
                        color: kPrimaryColor,
                        ),
                        child: Row(
                          children:<Widget>[
                            Text(
                              "START LEARNING",
                              style:Theme.of(context).textTheme.button?.copyWith(
                                color:Colors.black,
                                ),
                              ),
                              SizedBox(width:10),
                              Icon(Icons.arrow_forward,
                                color: Colors.black,
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
              ],
            ),
            ),
        ],
      ),
    );   
  }
}
