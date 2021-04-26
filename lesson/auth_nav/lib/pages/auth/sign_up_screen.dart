
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';

import '../../formfields/date_form_2_field.dart';
import '../../formfields/pass_word_form_field.dart';
import '../../formfields/text_form_field.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreen createState() => _SignUpScreen();
}

class _SignUpScreen extends State<SignUpScreen> {
  late DateTime _chosenDateTime;
  final _formKey = GlobalKey<FormState>();
  bool _value = true;
  String _passWord = "";
  String pattern = r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$';
  RegExp regExp = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
  String _time = "Not set";
  int _age = 0;
  DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime picked = (await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101)))!;
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    _showDialog(){
      showDialog(
          context: context,
          builder: (BuildContext context) {
            return Dialog(
              shape: RoundedRectangleBorder(
                  borderRadius:
                  BorderRadius.circular(20.0)), //this right here
              child: Container(
                height: 216,
                child: Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(alignment: Alignment.center,
                        child: Column(
                          children: [
                            Container(height: 40,child: Image.asset("assets/orange.jpg", fit: BoxFit.fill,),
                            ),
                            SizedBox(height: 28,),
                            Text("You must be over 18 years old to join"),
                            SizedBox(height: 24,),

                            TextButton(
                                onPressed: () {Navigator.pop(context);},
                                child: Text(
                                  "Close",
                                  style: TextStyle(color: Color(0xFF1BC0C5)),
                                ),
                              ),
                          ],
                        )),


                    ],
                  ),
                ),
              ),
            );
          });
    }
    return Scaffold(
        appBar: AppBar(
          title: Text("Create account"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Form(
              key: _formKey,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    MyTextFormField(
                      txtInPut: "Username",
                      request: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter UserName';
                        } else if (value.length < 8) {
                          return "enter user name false";
                        }
                        setState(() {});
                      },
                    ),
                    Container(
                      child: Row(
                        children: [
                          ConstrainedBox(
                            constraints: BoxConstraints.tightFor(
                              width: 190,
                            ),
                            child: MyTextFormField(
                              txtInPut: "First Name",
                              request: true,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter First name';
                                } else if (value.length < 3) {
                                  return "enter first name  false";
                                }
                                setState(() {});
                              },
                            ),
                          ),
                          new Spacer(),
                          ConstrainedBox(
                            constraints: BoxConstraints.tightFor(
                              width: 190,
                            ),
                            child: MyTextFormField(
                              txtInPut: "Last Name",
                            ),
                          )
                        ],
                      ),
                    ),
                    DateForm2Field(
                      txtInPut2: "Date of birth*",
                      validator: (value) {
                        if (2021 - value!.year < 18) {
                           _showDialog();
                           return "need 18+";
                        }

                      },
                    ),
                    MyTextFormField(
                      txtInPut: "Email",
                      request: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter email';
                        } else if (!regExp.hasMatch(value)) {
                          return "enter email false";
                        }
                        setState(() {});
                      },
                    ),
                    MyPassWordFormField(
                      txtInPut: "Password",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter password';
                        } else if (value.length < 8) {
                          return "enter password false";
                        }
                      },
                      onSaved: (value){
                        _passWord = value!;
                      },
                    ),
                    MyPassWordFormField(
                      txtInPut: "Confirm Password",
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Please confirm password';
                        } else if (value != _passWord) {
                          return "confirm password false";
                        }
                      },
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 24, right: 24),
                        child: Column(
                          children: [
                            ConstrainedBox(
                              constraints: BoxConstraints.tightFor(
                                  width: 400, height: 60),
                              child: ElevatedButton(
                                onPressed: () {},
                                child: Container(
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Row(
                                      children: [
                                        new Spacer(),
                                        Icon(Icons.camera_alt),
                                        Text(" Add profile photo", style: TextStyle(color: Colors.blue),),
                                        new Spacer()
                                      ],
                                    ),
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  shape: new RoundedRectangleBorder(
                                    side: BorderSide(color: Colors.blue),
                                    borderRadius:
                                        new BorderRadius.circular(5.0),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Checkbox(
                                    value: _value,
                                    onChanged: (bool? newValue) {
                                      setState(() {
                                        _value = newValue!;
                                      });
                                    },
                                  ),
                                  Text("I agree to"),
                                  TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Term & Condition",
                                        style: TextStyle(color: Colors.blue),
                                      ))
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 50,
                            ),
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
                                  primary: Colors.black26,
                                  shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(5.0),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              )),
        ));
  }
}
