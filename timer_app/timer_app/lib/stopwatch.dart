import 'package:flutter/material.dart';
import 'package:timer_app/Timerpage.dart';
import 'circle.dart';
import 'startstopreset.dart';
class Stopwatch extends StatefulWidget {
  @override
  _StopwatchState createState() => _StopwatchState();
}

class _StopwatchState extends State<Stopwatch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color:Color(0xFF09070B),
        child: Column(children: <Widget>[
          Expanded(
               child: Center(
               child: Text(
                  'STOP WATCH',
                   style: TextStyle(
                   fontSize: 50,
                   fontWeight: FontWeight.bold,
                   fontFamily: 'Montserrat',  
                 ),     
                 ),
                 ),
                ),
                Expanded
          (
            child:circle(),
          ),
          Expanded(
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
                   Ssr('START'),
                   Ssr('STOP'),
                   Ssr('RESET'),
              ],
              ),
          ),
           Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
            Expanded(
                          child: FlatButton(
                child:Icon(
                  Icons.hourglass_empty,
                  size: 20,
                  
                  
                ),
                onPressed: () {
                  Navigator.pop(context);

                  
                },
                ),
            ),
              Expanded(
                              child: FlatButton(
                child:Icon(
                  Icons.timer,
                  size: 20,
                  
                ),
                onPressed: () {
                  

                  
                },
                ),
              ),
          ],
          ),


        ],
        ),
      ),

    );
      
    
  }
}
