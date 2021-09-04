 
import 'package:flutter/material.dart';
class LayoutDropdown extends StatefulWidget {
 
  @override
  _LayoutDropdown createState() => _LayoutDropdown();
}
 class _LayoutDropdown extends State<LayoutDropdown> {
 String layoutvalue = '';

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(children: <Widget>[
        
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
          Padding(padding: EdgeInsets.fromLTRB(20, 20, 60, 20),
            child: Text('Layout : ', 
        style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center ),),

     Padding(
       padding: EdgeInsets.all(5.0),
       child: DropdownButton<String>(items: [
         DropdownMenuItem<String>(
           value: 'Layout 1',
           child: Center(
             child:Text('Layout 1'),
             ),
           ),
           DropdownMenuItem<String>(
           value: 'Layout 2',
           child: Center(
             child:Text('Layout 2'),
             ),
           ),
           DropdownMenuItem<String>(
           value: 'Layout 3',
           child: Center(
             child:Text('Layout 3'),
             ),
           )
       ],
       onChanged: (_layoutvalue)=> {
     setState((){
       layoutvalue = _layoutvalue as String;
     })
       },
      //  hint: Text("Select Layout"),
       ),
       ),
       Text('$layoutvalue' )
        ],)
        
      ],
      ),
    );
  }
 }