import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:timer_app/circle.dart';
import 'stopwatch.dart'; 
             class Ssr  extends StatelessWidget {
                final ssr;
                Ssr(this.ssr);
               @override
               Widget build(BuildContext context) {
                 return Container(
                   child:Row(
                     children:<Widget>[
                              Padding(
                     padding: EdgeInsets.all(15),
                                        child: FlatButton(
                                     child: Text(
                         ssr.toString(),
                         style: TextStyle(
                           fontSize: 20,
                         fontWeight: FontWeight.bold,
                         fontFamily: 'Montserrat',  
                           ),                       
                       ),
                       onPressed: (){

                       },            
              ),
                 ),
                   
              
                     ],
                   ),
                   
                 );
               }
             }