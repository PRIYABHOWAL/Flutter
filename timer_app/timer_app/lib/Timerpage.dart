import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timer_app/circle.dart';
import 'stopwatch.dart'; 
import 'startstopreset.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';

const fontfamily='Montserrat';
class Timerpage extends StatefulWidget{
  @override
  _TimerpageState createState() => _TimerpageState();
}
class _TimerpageState extends State<Timerpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        color:Color(0xFF09070B),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
          Padding(
            padding:EdgeInsets.only(top:100.0),
                      child: Center(
                     child: Text(
               'TIMER',
                style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                fontFamily:fontfamily,  
              ),     
              ),
              ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded
          (
            child:circle(),
          ),
          SizedBox(
            height: 25.0,
          ),
           Column
          (
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Button(1),
                Button(2),
                Button(3),
                ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                Button(4),
                Button(5),
                Button(6),
                ],),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Button(7),
                  Button(8),
                Button(9),
               ],
              ),
            ],
          ),
          Center(
                child: FlatButton(
                  child: Text(
                    '0',
                    style: TextStyle(
          fontFamily: fontfamily,
          fontSize:30.0,
          fontWeight: FontWeight.bold,
                    ),

                  ),
                  onPressed: (){},
                ),
                ),            
            SizedBox
            (height: 5.0,
            ),
        
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children:<Widget>[
                 Ssr('START'),
                 Ssr('STOP'),
                 Ssr('Reset')
            ]
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
                onPressed: () {} ,                             
                ),
            ),
              Expanded(
                              child: FlatButton(
                child:Icon(
                  Icons.timer,
                  size: 20,
                   ),
                onPressed: () {
                  Navigator.push(
                                  context,
                                MaterialPageRoute(builder: (context) => Stopwatch()),
  );

                  
                },
                ),
              ),
          ],
          ),

        ],
        ),
      )
    );      
  }
}
class Cct extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    return Container(
      child:CircularCountDownTimer(
                  
       
              // Countdown duration in Seconds
              duration: 10,

              // Width of the Countdown Widget
              width: MediaQuery.of(context).size.width / 2,

              // Height of the Countdown Widget
              height: MediaQuery.of(context).size.height / 2,

              // Default Color for Countdown Timer
              color: Colors.white,

              // Filling Color for Countdown Timer
              fillColor: Colors.pink,

              // Border Thickness of the Countdown Circle
              strokeWidth: 5.0,

              // Text Style for Countdown Text
              textStyle: TextStyle(
                  fontSize: 22.0,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold),

              // true for reverse countdown (max to 0), false for forward countdown (0 to max)
              isReverse: true,

              // Function which will execute when the Countdown Ends
              onComplete: () {
                // Here, do whatever you want
                print('Countdown Ended');
              },
            )
      
    );
  }
}

