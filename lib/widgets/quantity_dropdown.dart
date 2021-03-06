 
import 'package:flutter/material.dart';
class QuantityDropdown extends StatefulWidget {
 
  @override
  _QuantityDropdown createState() => _QuantityDropdown();
}
 class _QuantityDropdown extends State<QuantityDropdown> {
 String quantityvalue = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Padding(padding: EdgeInsets.fromLTRB(20, 20, 35, 20),
            child: Text('Quantity : ', 
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center ),),

     Padding(
       padding: EdgeInsets.all(5.0),
       child: DropdownButton<String>(items: [
         DropdownMenuItem<String>(
           value: 'Quantity 1',
           child: Center(
             child:Text('Quantity 1'),
             ),
           ),
           DropdownMenuItem<String>(
           value: 'Quantity 2',
           child: Center(
             child:Text('Quantity 2'),
             ),
           ),
           DropdownMenuItem<String>(
           value: 'Quantity 3',
           child: Center(
             child:Text('Quantity 3'),
             ),
           )
       ],
       onChanged: (_quantityvalue)=> {
     setState((){
       quantityvalue = _quantityvalue as String;
     })
       },
      //  hint: Text("Select Quantity"),
       ),
       ),
       Text('$quantityvalue' )
        ],)
        
      ],
      ),
    );
  }
 }