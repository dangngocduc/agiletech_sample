import 'dart:developer' as developer;
import 'package:flutter/material.dart';

import '../../formfields/text_form_field.dart';
import '../../formfields/text_form_field.dart';

import 'package:flutter/cupertino.dart';
import 'sign_up_screen.dart';

class SignIn extends StatefulWidget {
  static const ROUTE_NAME = 'SignIn';
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  static const TAG = 'SignIn';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
            child: Padding(
              padding: EdgeInsets.only(left: 24, right: 24, top: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/orange.jpg"),
                    radius: 30,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text("Welcome to Social City!"),
                  Text("Make new friends and discover places"),
                  SizedBox(
                    height: 40,
                  ),
                  MyTextFormField(
                    txtInPut: "Email/Username",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter UserName';
                      }
                    },
                  ),
                  MyTextFormField(
                    txtInPut: "Password",
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter Password';
                      }
                    },
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                    TextButton(
                          child: Text(
                            "Forgot password?",
                            style: TextStyle(color: Colors.lightBlueAccent),
                          ),
                          onPressed: () {},
                        )

                  ],),



                  SizedBox(height: 40,),
                  ConstrainedBox(
                    constraints: BoxConstraints.tightFor(
                        width: 400, height: 60),
                    child: ElevatedButton(
                      onPressed: () {
                        _formKey.currentState!.save();
                        if (_formKey.currentState!.validate()) {
                          Scaffold.of(context).showSnackBar(SnackBar(
                            content: Text('success'),
                            behavior: SnackBarBehavior.floating,
                          ));
                        }
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.blue,
                        shape: new RoundedRectangleBorder(
                          borderRadius:
                          new BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 42,),
                  Text("or continue with"),
                  SizedBox(height: 49,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    CircleAvatar(),
                    SizedBox(width: 24,),
                    CircleAvatar(),
                  ],),
                  SizedBox(height: 36,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [Text("Don't have an account?"),
                  TextButton(onPressed: (){
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => SignUpScreen())
                    );

                  }, child: Text("Sign Up", style: TextStyle(color: Colors.blue),))],),

                ],
              ),
            ),
        ),
      ),
    );
  }
}
