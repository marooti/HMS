import 'package:flutter/material.dart';

import '../routes/routes.dart';

class LoginPage extends StatelessWidget {
  
  final _formkey = GlobalKey<FormState>();
   bool changeButton = false;
  @override
  Widget build(BuildContext context) {
    
 
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
        child: Form(
          key: _formkey,
          child: Column(
            children: [
              Image.asset("assets/images/login.png",
              fit: BoxFit.cover,
              ),
             SizedBox(
              height: 20,
             ),
              Text(
                "Welcome to HMS",
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: "Enter username",
                  labelText: "Username",
                ),
                validator: (value){
                  if(value!.isEmpty){
                    return "Enter your name";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: "Enter password",
                  labelText: "Password",
                ),
                 validator: (value){
                  if(value!.isEmpty){
                    return "Enter your password";
                  }
                  return null;
                },
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: TextButton.styleFrom(
                  minimumSize: Size(200, 50)
        
                ),
                 child: Text(
                "Login"
              ),
                onPressed: (){
                  Navigator.pushNamed(context, MyRoutes.homeRoutes);
                },
                
              )
            ],
            
          ),
        ),
      )
    );
  }
}