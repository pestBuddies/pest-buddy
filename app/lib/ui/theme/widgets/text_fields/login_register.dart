import 'package:flutter/material.dart';
import 'package:pestbuddy/ui/theme/helpers.dart';

class AppLoginRegisterField extends StatelessWidget {
  final String label;
  final String error;

  AppLoginRegisterField({this.label, this.error});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(24, 4, 24, 4),
      child: TextFormField(
        decoration: InputDecoration(
          labelText: label,
          errorText: error,
          filled: true,
          fillColor: Colors.grey[200],
          focusColor: kitYellow,
          border: OutlineInputBorder(
            borderSide: BorderSide(color: kitBlue),
            borderRadius: BorderRadius.all(themeRadius),
          ),
        ),
      ),
    );
  }
}
