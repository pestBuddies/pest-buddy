import 'package:flutter/material.dart';

class TextBox extends StatelessWidget {
  final String label;
  TextBox({this.label});
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        labelText: label,
      ),
    );
  }
}
