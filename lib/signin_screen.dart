import 'package:flutter/material.dart';

class signInScreen extends StatelessWidget {
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:<Widget> [
          Expanded(
            flex: 5,
          child: Container(
          decoration: BoxDecoration(image:
          DecorationImage(image:AssetImage("assets/perosn.jpeg"),
          fit: BoxFit.cover,
          alignment: Alignment.bottomCenter,
          ),
          ),
          ),
          ),
          Expanded(
            flex: 4,
            child:Padding(
              padding: const EdgeInsets.symmetric(horizontal:16 ),
              child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children:<Widget> [
                    Text(
                      "SIGN IN",
                     style: Theme.of(context).textTheme.headline4,
                     ),
                     Text(
                      "SIGN UP",
                      style:Theme.of(context).textTheme.button,
                      ),
                  ],
                ),
              ],
          ),
            ),
          ),
          ],
      ),
    );
  }
}
