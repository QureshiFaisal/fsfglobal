 
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Padding(padding: EdgeInsets.fromLTRB(20, 20, 50, 20),
            child: Text('Product : ', 
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center ),),

     Padding(
       padding: EdgeInsets.all(5.0),
       child: DropdownButton<String>(
         items: [
         DropdownMenuItem<String>(
           value: 'Product 1',
           child: Center(
             child:Text('Product 1'),
             ),
           ),
           DropdownMenuItem<String>(
           value: 'Product 2',
           child: Center(
             child:Text('Product 2'),
             ),
           ),
           DropdownMenuItem<String>(
           value: 'Product 3',
           child: Center(
             child:Text('Product 3'),
             ),
           )
       ],
       onChanged: (_productvalue) {
     
       },
      //  hint: Text("Select Product"),
       ),
       ),
       Text('$productvalue' )
        ],)
        
      ],
      ),
    );
    
  }
 }