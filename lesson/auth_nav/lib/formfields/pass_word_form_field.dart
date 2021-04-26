import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyPassWordFormField extends FormField<String> {
  MyPassWordFormField({
    Key? key,
    String? initialValue,
    required String txtInPut,
    FormFieldSetter<String>? onSaved,
    FormFieldValidator<String>? validator,
    bool autoValidate = false,
    bool enabled = true,
    bool request = false,
    bool obscureText = true,
  }) : super(
      key: key,
      validator: validator,
      onSaved: onSaved,
      initialValue: initialValue,
      autovalidate: autoValidate,
      builder: (FormFieldState state) {
        bool _validate;
        final inputBorder = OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
        );
        return Column(
          children: [
            InkWell(
              child: Padding(
                  padding:
                  EdgeInsets.only(left: 24, right: 24),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFF1F6FF),
                      borderRadius: new BorderRadius.circular(2.0),
                    ),
                    child: ListTile(
                        title: TextField(
                          obscureText: obscureText,
                          onChanged: (text) {
                            state.didChange(text);
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xFFF1F6FF),
                                    width: 1.0)),
                            hintText: txtInPut,
                            hintStyle: TextStyle(
                                color: Color(0xFF636A9B), fontSize: 14),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.black, width: 1.0),
                            ),
                          ),
                        ),
                        trailing: IconButton(
                          icon: Icon(
                              obscureText ? Icons.remove_red_eye : Icons.close_outlined),
                          onPressed: () {
                            state.setState(() {
                              // iconButton ? obscureText = false: obscureText = true;
                              obscureText = !obscureText;
                            });
                          },
                        )),
                  )),
            ),
            state.hasError
                ? Align(alignment: Alignment.centerLeft, child: Padding(padding: EdgeInsets.only(left: 24), child: Text(
              state.errorText!,
              style: TextStyle(color: Colors.red),
            ),) ,)
                : Container(height: 12,),
            SizedBox(height: 8,),
          ],
        );
      });
}
