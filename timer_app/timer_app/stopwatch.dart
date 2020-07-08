import 'package:flutter/material.dart';
class stopwatch extends StatefulWidget {
  @override
  _stopwatchState createState() => _stopwatchState();
}
class _stopwatchState extends State<stopwatch> {
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
            child: Center
              (  
                child:Stack(
                 alignment: Alignment.center,
                  children:<Widget>[          
                CircleAvatar(
                radius: 125.0,
                backgroundColor:Colors.pink,   
            ),
             CircleAvatar(
                radius: 105.0,
                backgroundColor:Colors.black,
                child: Text(
                  '00:00:00',
                  style:TextStyle(
                    fontSize: 50,
                  )

                ),


            ),
                  ]
                ),
              ),
          ),
          Expanded(
            child:Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:<Widget>[
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
                       onPressed: (){

                       },

                
                ),
                   ),
                Padding(
                  padding: EdgeInsets.all(15),
                                  child: FlatButton(
                    
                       child: Text(
                         'PAUSE',
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
                Padding(
                  padding:EdgeInsets.all(15),
                  child: FlatButton(
                    
                       child: Text(
                         'RESET',
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
              ]
            ),

          ),


        ],
        ),
      ),

    );
      
    
  }
}
