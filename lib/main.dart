import 'package:demo/pages/homepage.dart';
import 'package:demo/pages/login_page.dart';
import 'package:demo/routes/routes.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoutes:(context) => HomePage(),
        MyRoutes.loginRoutes:(context) => LoginPage(),

      },
    );
  
  }
}