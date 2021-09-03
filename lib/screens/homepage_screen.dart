
import 'package:flutter/material.dart';
import 'package:fsfglobal/screens/sales_order_form_screen.dart';
import '../widgets/main_drawer.dart';
class HomePageScreen extends StatelessWidget {
  static const routeName = '/homepagescreen';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home Page',
      home: Scaffold(
        appBar: AppBar(
          title: const Text ('Home Page'),
          
          centerTitle: true,
          backgroundColor: Colors.black,
      ),
      drawer: MainDrawer(),
      ),
      initialRoute: '/',
      routes: {
      SalesOrderFormScreen.routeName: (ctx) => SalesOrderFormScreen(),  
       
        
      },
   
      
    
    );
  }
}