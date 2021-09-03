 

import 'package:flutter/material.dart';
class QuantityList extends StatefulWidget {
 
  @override
  _QuantityListState createState() => _QuantityListState();
}
 class _QuantityListState extends State<QuantityList> {
 String quantityvalue = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
     Padding(
       padding: EdgeInsets.all(5.0),
       child: DropdownButton<String>(items: [
         DropdownMenuItem<String>(
           value: '1',
           child: Center(
             child:Text('One'),
             ),
           ),
           DropdownMenuItem<String>(
           value: '2',
           child: Center(
             child:Text('Two'),
             ),
           ),
           DropdownMenuItem<String>(
           value: '3',
           child: Center(
             child:Text('Three'),
             ),
           )
       ],
       onChanged: (_quantityvalue)=> {
     setState((){
       quantityvalue = _quantityvalue as String;
     })
       },
       hint: Text("Select Quantity"),
       ),
       ),
       Text('$quantityvalue' )
      ],
      ),
    );
  }
 }