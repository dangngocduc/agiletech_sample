import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';

class DateForm2Field extends FormField<DateTime> {
  DateForm2Field({
    Key? key,
    DateTime? initialValue,
    required String txtInPut2,
    FormFieldSetter<DateTime>? onSaved,
    FormFieldValidator<DateTime>? validator,
    bool autoValidate = false,
    bool enabled = true,
    DateTime? firstDate,
    DateTime? lastDate,
  }) : super(
            key: key,
            validator: validator,
            onSaved: onSaved,
            initialValue: initialValue = DateTime.now(),
            autovalidate: autoValidate,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            builder: (FormFieldState state) {
              DateFormat formatter = DateFormat("EE, MMM d, yyyy h:mma");
              return Column(
                children: [
                  InkWell(
                    child: Padding(
                      padding: EdgeInsets.only(left: 24, right: 24),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xFFF1F6FF),
                          borderRadius: new BorderRadius.circular(2.0),
                        ),
                        child: InputDecorator(
                          decoration: InputDecoration(
                            // enabledBorder: inputBorder,
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: Color(0xFFF1F6FF), width: 1.0)),
                            focusedBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.black, width: 1.0),
                            ),
                          ),
                          // child: Text(formatter.format(state.value)),
                          child: Row(
                            children: [
                              Text(
                                txtInPut2,
                                style: TextStyle(
                                    color: Color(0xFF636A9B), fontSize: 14),
                              ),
                              new Spacer(),
                              Icon(Icons.calendar_today),
                            ],
                          ),
                        ),
                      ),
                    ),
                    onTap: () async {
                      DateTime date;
                      TimeOfDay time = TimeOfDay(hour: 0, minute: 0);

                      date = (await showDatePicker(
                        context: state.context,
                        initialDate: state.value,
                        firstDate: DateTime(1970),
                        lastDate: DateTime(2100),
                      ))!;
                      if (date != null) {
                        time = (await showTimePicker(
                          context: state.context,
                          initialTime: TimeOfDay.fromDateTime(state.value),
                        ))!;
                        if (time != null) {
                          state.didChange(DateTime(
                            date.year,
                            date.month,
                            date.day,
                            time.hour,
                            time.minute,
                          ));
                        }
                      }
                      state.setState(() {
                        txtInPut2 = formatter.format(state.value);
                      });

                    },
                  ),
                  state.hasError
                      ? Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(left: 24),
                            child: Text(
                              state.errorText!,
                              style: TextStyle(color: Colors.red),
                            ),
                          ),
                        )
                      : Container(
                          height: 12,
                        ),
                  SizedBox(
                    height: 8,
                  ),
                ],
              );
            });
}
