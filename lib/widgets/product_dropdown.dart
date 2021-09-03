 
import 'package:flutter/material.dart';
class ProductList extends StatefulWidget {
 
  @override
  _ProductListState createState() => _ProductListState();
}
 class _ProductListState extends State<ProductList> {
 String productvalue = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Padding(padding: EdgeInsets.all(20.0),
            child: Text('Product : ', 
        style: TextStyle(fontSize: 15),
        textAlign: TextAlign.center ),),

     Padding(
       padding: EdgeInsets.all(5.0),
       child: DropdownButton<String>(items: [
         DropdownMenuItem<String>(
           value: '1',
           child: Center(
             child:Text('Product 1'),
             ),
           ),
           DropdownMenuItem<String>(
           value: '2',
           child: Center(
             child:Text('Product 2'),
             ),
           ),
           DropdownMenuItem<String>(
           value: '3',
           child: Center(
             child:Text('Product 3'),
             ),
           )
       ],
       onChanged: (_value)=> {
     setState((){
       productvalue = _value as String;
     })
       },
       hint: Text("Select Product"),
       ),
       ),
       Text('$productvalue' )
        ],)
        
      ],
      ),
    );
  }
 }