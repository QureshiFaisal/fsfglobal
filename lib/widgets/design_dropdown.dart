 
import 'package:flutter/material.dart';
class DesignDropdown extends StatefulWidget {
 
  @override
  _DesignDropdown createState() => _DesignDropdown();
}
 class _DesignDropdown extends State<DesignDropdown> {
 String designvalue = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Padding(padding: EdgeInsets.fromLTRB(20, 20, 55, 20),
            child: Text('Design : ', 
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center ),),

     Padding(
       padding: EdgeInsets.all(5.0),
       child: DropdownButton<String>(items: [
         DropdownMenuItem<String>(
           value: 'Design 1',
           child: Center(
             child:Text('Design 1'),
             ),
           ),
           DropdownMenuItem<String>(
           value: 'Design 2',
           child: Center(
             child:Text('Design 2'),
             ),
           ),
           DropdownMenuItem<String>(
           value: 'Design 3',
           child: Center(
             child:Text('Design  3'),
             ),
           )
       ],
       onChanged: (_designvalue)=> {
     setState((){
       designvalue = _designvalue as String;
     })
       },
      //  hint: Text("Select Design"),
       ),
       ),
       Text('$designvalue' )
        ],)
        
      ],
      ),
    );
  }
 }