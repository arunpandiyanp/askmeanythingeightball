import 'dart:math';

import 'package:flutter/material.dart';

void main() {

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      home:Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('Ask Me Anything'),
          backgroundColor: Colors.blue.shade900,
        ),
        body: MyHomePage(),
      ),

    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ballState();
  }

}
class ballState  extends State{
  int diceNumberDynamic = 1;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(

        child: FlatButton(
          child: Image.asset('images/ball$diceNumberDynamic.png'),
          onPressed: ()
          {
            setState(() {
              eightAction();
            });
          },
        ),

    );
  }


void eightAction()
{
  diceNumberDynamic = Random().nextInt(4)+1;
}

}