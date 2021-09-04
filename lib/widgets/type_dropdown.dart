 
import 'package:flutter/material.dart';
class TypeDropdown extends StatefulWidget {
 
  @override
  _TypeDropdown createState() => _TypeDropdown();
}
 class _TypeDropdown extends State<TypeDropdown> {
 String typevalue = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Padding(padding: EdgeInsets.fromLTRB(20, 20, 90, 20),
            child: Text('Type : ', 
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center ),),

     Padding(
       padding: EdgeInsets.all(5),
       child: DropdownButton<String>(items: [
         DropdownMenuItem<String>(
           value: 'Type 1',
           child: Center(
             child:Text('Type 1'),
             ),
           ),
           DropdownMenuItem<String>(
           value: 'Type 2',
           child: Center(
             child:Text('Type 2'),
             ),
           ),
           DropdownMenuItem<String>(
           value: 'Type 3',
           child: Center(
             child:Text('Type 3'),
             ),
           )
       ],
       onChanged: (_typevalue)=> {
     setState((){
       typevalue = _typevalue as String;
     })
       },
      //  hint: Text("Select Type"),
       ),
       ),
       Text('$typevalue' )
        ],)
        
      ],
      ),
    );
  }
 }