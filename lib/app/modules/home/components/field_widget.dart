import 'package:flutter/material.dart';


class FieldWidiget extends StatelessWidget {
  
  final String name;

  final Function change;
  
  final double value;
  
  FieldWidiget({this.name, this.change, this.value});

  @override
  Widget build(BuildContext context) {
    return TextField(
        onChanged: (value) {
          var newValue = double.parse(value);
          if (newValue < 0.1) newValue = 1;
          this.change(newValue);
        },
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          filled: true,
          labelText: this.name,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10))
          )
    ),);
  }
}