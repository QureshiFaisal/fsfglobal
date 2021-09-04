 
import 'package:flutter/material.dart';
class ProductSizeDropdown extends StatefulWidget {
 
  @override
  _ProductSizeDropdown createState() => _ProductSizeDropdown();
}
 class _ProductSizeDropdown extends State<ProductSizeDropdown> {
 String sizevalue = '';

  @override
  Widget build(BuildContext context) {
    return Column(children: [
Column(
  mainAxisAlignment: MainAxisAlignment.start,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: <Widget>[
        
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Padding(padding: EdgeInsets.fromLTRB(20, 20, 100, 20),
            child: Text('Size : ', 
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center ),
        
        ),

     Padding(
       padding: EdgeInsets.all(5.0),
       child: DropdownButton<String>(
         items: [
         DropdownMenuItem<String>(
           value: 'Size 1',
           child: Center(
             child:Text('Size 1'),
             ),
           ),
           DropdownMenuItem<String>(
           value: 'Size 2',
           child: Center(
             child:Text('Size 2'),
             ),
           ),
           DropdownMenuItem<String>(
           value: 'Size 3',
           child: Center(
             child:Text('Size 3'),
             ),
           )
       ],
       onChanged: (_sizevalue)=> {
     setState((){
       sizevalue = _sizevalue as String;
     })
       },
      //  hint: Text("Select Size"),
       ),
       ),
       Text('$sizevalue' )
        ],)
        
      ],
      )
    ],);
       
  
  }
 }