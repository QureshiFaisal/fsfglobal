
import 'package:flutter/material.dart';
import './screens/homepage_screen.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

class Login extends StatefulWidget{
  @override 
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Welcome"),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: Container(
                    width: 200,
                    height: 100,
                    child: Text('FSFGlobal',
                    style: TextStyle(fontSize: 40),
                     textAlign: TextAlign.center )
                    ,
                    
                    // decoration: BoxDecoration(
                    //     color: Colors.red,
                    //     borderRadius: BorderRadius.circular(50.0)),
                        
                    // // child: Image.asset('asset/images/flutter-logo.png')
                    ),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Enter valid email id as abc@gmail.com'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(

                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
              ),
            ),
            FlatButton(
              onPressed: (){
                //TODO FORGOT PASSWORD SCREEN GOES HERE
              },
              child: Text(
                'Forgot Password',
                style: TextStyle(color: Colors.black, fontSize: 15),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePageScreen()));
                },
                child: Text(
                  'Login as admin',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            Divider(),
             Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: FlatButton(
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => HomePageScreen()));
                },
                child: Text(
                  'Login as client ',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 130,
            ),
            Text('New User? Create Account')
          ],
        ),
      ),
    );
  }
} 
