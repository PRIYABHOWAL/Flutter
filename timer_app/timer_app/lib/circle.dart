
import 'package:flutter/material.dart';
import 'Timerpage.dart';
var num = new List<String>.generate(6, (_) => []);


class circle extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Container(
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
                num[0]+num[1]+':'+num[2]+num[3]+':'+num[4]+num[5],
                        
                  style:TextStyle(
                    fontSize: 50,
                  )

                ),


            ),
                  ]
                ),
              ),
      
    );
  }
}
class Button extends StatefulWidget {
final button;
  Button(this.button);

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child:FlatButton(child:Text(
                  widget.button.toString(),
                  style: TextStyle(
                    fontFamily: fontfamily,
                    fontSize:30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onPressed: (){
                  setState(() {
                  num[0].add('3');
                  });

           },
                 ),
      
    );
  }
}
