import 'package:flutter/material.dart';
import 'package:fsfglobal/screens/preview_screen.dart';
import 'package:fsfglobal/widgets/design_dropdown.dart';
import 'package:fsfglobal/widgets/layout_dropdown.dart';
import 'package:fsfglobal/widgets/productsize_dropdown.dart';
import 'package:fsfglobal/widgets/salesrep_dropdown.dart';
import '../widgets/product_dropdown.dart';
import '../widgets/quantity_dropdown.dart';
import '../widgets/type_dropdown.dart';


class SalesOrderFormScreen extends StatelessWidget {
  static const routeName = '/salesorderformscreen';
  @override
  Widget build(BuildContext context) {
    return  
    Scaffold(
        appBar: AppBar(
          title: const Text ('FSFGlobal'),
          centerTitle: true,
          backgroundColor: Colors.black,
      ),
      body: const Center(
        child: MyStatefulWidget(),
      ),
    );
    
  }
}
class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

/// This is the private State class that goes with MyStatefulWidget.
class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  String dropdownValue = 'Product 1';

  @override
  Widget build(BuildContext context) {
    return 
    Column(children: [
      ProductList(),
      Divider(),
      ProductSizeDropdown(),
      Divider(),
      TypeDropdown(),
      Divider(),
     QuantityDropdown(),
     Divider(),
     LayoutDropdown(),
     Divider(),
     DesignDropdown(),
     Divider(),
     SalesRepDropdown(),
     Divider(),
    // 
   
    Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
       Container(
    margin:const EdgeInsets.all(10), 
    child: Align(
      
      alignment: Alignment.bottomLeft,
      child: RaisedButton(
        onPressed: () {
            Navigator.of(context).pushReplacementNamed(PreviewScreen.routeName);
        },
        child: const Text('Preview', style: TextStyle(fontSize: 10)),
        color: Colors.black,
        textColor: Colors.white,
        elevation: 5,
      ),
    ),
  ),
  Container(
    margin:const EdgeInsets.all(10), 
    child: Align(
      
      alignment: Alignment.bottomCenter,
      child: RaisedButton(
        onPressed: (){
          showDialog(context: context, 
          builder: (context) => AlertDialog(
          title: Text("Are you sure you want to Submit?"),
          actions: <Widget>[
            
            ElevatedButton(onPressed: (){}, child: Text('No'),style: ButtonStyle(
              backgroundColor:MaterialStateProperty.all<Color>(Colors.black),),),
            ElevatedButton(onPressed: (){}, child: Text('Yes'),style: ButtonStyle(
              backgroundColor:MaterialStateProperty.all<Color>(Colors.black),),),
          ],
        ),);
          
        },
        child: const Text('Submit', style: TextStyle(fontSize: 10)),
        color: Colors.black,
        textColor: Colors.white,
        elevation: 5,
      ),
    ),
  ),
   Container(
    margin:const EdgeInsets.all(15), 
    child: Align(
      
      alignment: Alignment.bottomRight,
      child: RaisedButton(
        onPressed: () {},
        child: const Text('Save', style: TextStyle(fontSize: 10)),
        color: Colors.black,
        textColor: Colors.white,
        elevation: 5,
      ),
    ),
  )    
    
      ],
    )
  

    ],
    );
    
  }
}