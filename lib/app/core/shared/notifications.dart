import 'package:flutter/material.dart';
import 'package:conversion_money/app/core/shared/contants.dart';

void showSnacBar(String value) {
  scaffoldKey.currentState.showSnackBar(new SnackBar(
      backgroundColor: Consts.primary,
      content: Container(
        color: Consts.primary,
        height: 30,
        padding: EdgeInsets.only(bottom: 15),
        alignment: Alignment.bottomCenter,
        child: Text(
          value,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      )));
}
