 
import 'package:flutter/material.dart';
class SalesRepDropdown extends StatefulWidget {
 
  @override
  _SalesRepDropdown createState() => _SalesRepDropdown();
}
 class _SalesRepDropdown extends State<SalesRepDropdown> {
 String salesRepvalue = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Padding(padding: EdgeInsets.fromLTRB(20, 20, 25, 20),
            child: Text('Sales rep : ', 
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center ),
        ),

     Padding(
       padding: EdgeInsets.all(5.0),
       child: DropdownButton<String>(items: [
         DropdownMenuItem<String>(
           value: '1',
           child: Center(
             child:Text('Sales rep 1'),
             ),
           ),
           DropdownMenuItem<String>(
           value: '2',
           child: Center(
             child:Text('Sales rep 2'),
             ),
           ),
           DropdownMenuItem<String>(
           value: '3',
           child: Center(
             child:Text('Sales rep 3'),
             ),
           )
       ],
       onChanged: (_sizeRepvalue)=> {
     setState((){
       salesRepvalue = _sizeRepvalue as String;
     })
       },
      //  hint: Text("Select Sales rep"),
       ),
       ),
       Text('$salesRepvalue' )
        ],)
        
      ],
      ),
    );
  }
 }