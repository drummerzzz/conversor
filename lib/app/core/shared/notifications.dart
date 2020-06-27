import 'package:flutter/material.dart';
import 'package:conversor/app/core/shared/contants.dart';

void showSnacBar(String value) {
  scaffoldKey.currentState.showSnackBar(new SnackBar(
    backgroundColor: Colors.blue,
    content: Container(
    color: Colors.blue,
    height: 30,
    padding: EdgeInsets.only(bottom: 15),
    alignment: Alignment.bottomCenter,
    child: Text(value),
  )));
}