import 'dart:async';

import 'package:flutter/material.dart';
import 'stopwatch.dart';
import 'package:numberpicker/numberpicker.dart';

const fontfamily = 'Montserrat';

class Timerpage extends StatefulWidget {
  @override
  _TimerpageState createState() => _TimerpageState();
}

class _TimerpageState extends State<Timerpage> {
  bool started = true;
  bool stopped = false;
  bool resett = false;
  int hour = 0;
  int min = 0;
  int sec = 0;

  int time = 0;
  void start() {
    time = ((hour * 60 * 60) + (min * 60) + (sec));
    Timer.periodic(Duration(
  
    ), callback)
  }

  void stop() {}
  void reset() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Color(0xFF09070B),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 100.0),
            child: Center(
              child: Text(
                'TIMER',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  fontFamily: fontfamily,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Expanded(
            child: Container(
              child: Center(
                child: Expanded(
                  child: Stack(alignment: Alignment.center, children: <Widget>[
                    CircleAvatar(
                      radius: 180.0,
                      backgroundColor: Colors.pink,
                    ),
                    CircleAvatar(
                      radius: 170.0,
                      backgroundColor: Colors.black,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new NumberPicker.integer(
                              initialValue: hour,
                              minValue: 0,
                              maxValue: 23,
                              onChanged: (val) {
                                setState(() {
                                  hour = val;
                                });
                              }),
                          new NumberPicker.integer(
                              initialValue: min,
                              minValue: 0,
                              maxValue: 59,
                              onChanged: (val) {
                                setState(() {
                                  min = val;
                                });
                              }),
                          new NumberPicker.integer(
                              initialValue: sec,
                              minValue: 0,
                              maxValue: 59,
                              onChanged: (val) {
                                setState(() {
                                  sec = val;
                                });
                              }),
                        ],
                      ),
                    ),
                  ]),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          SizedBox(
            height: 5.0,
          ),
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
            Padding(
              padding: EdgeInsets.all(15),
              child: FlatButton(
                child: Text(
                  'START',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),
                ),
                onPressed: () {
                  started ? start() : null;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: FlatButton(
                child: Text(
                  'STOP',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),
                ),
                onPressed: () {
                  stopped ? null : stop();
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(15),
              child: FlatButton(
                child: Text(
                  'RESET',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Montserrat',
                  ),
                ),
                onPressed: () {
                  resett ? null : reset();
                },
              ),
            ),
          ]),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: FlatButton(
                  child: Icon(
                    Icons.hourglass_empty,
                    size: 20,
                  ),
                  onPressed: () {},
                ),
              ),
              Expanded(
                child: FlatButton(
                  child: Icon(
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
    ));
  }
}
