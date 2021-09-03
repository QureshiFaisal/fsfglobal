import 'package:flutter/material.dart';
import '../widgets/product_dropdown.dart';
import '../widgets/quantity_dropdown.dart';


class SalesOrderFormScreen extends StatelessWidget {
  static const routeName = '/salesorderformscreen';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
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
    return Column(children: [
      ProductList(),
      
     QuantityList()
    //   DropdownButtonFormField<String>(
    //   value: dropdownValue,
    //   icon: const Icon(Icons.arrow_downward),
    //   iconSize: 24,
    //   elevation: 16,
    //   style: const TextStyle(color: Colors.black),
    //   decoration: InputDecoration(
    //     filled: true,
    //     labelText: 'Product',
    //   ),
    //   // underline: Container(
    //   //   height: 2,
    //   //   color: Colors.deepPurpleAccent,
    //   // ),
    //   onChanged: (String? newValue) {
    //     setState(() {
    //       dropdownValue = newValue!;
    //     });
    //   },
    //   items: <String>['Select a product', 'Product 1', 'Product 2', 'Product 3']
    //       .map<DropdownMenuItem<String>>((String value) {
    //     return DropdownMenuItem<String>(
    //       value: value,
    //       child: Text(value),
    //     );
    //   }).toList(),
        
    // ),
     


    ],);
    
    
  }
}