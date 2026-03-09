import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastUtil {
  Future<bool?> showToast(
    String message, {
    Color textColor = Colors.black,
    Color backgroundColor = Colors.greenAccent,
    double fontSize = 16.0,
    ToastGravity gravity = ToastGravity.CENTER,
  }) {
    return Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: gravity,
      timeInSecForIosWeb: 1,
      backgroundColor: backgroundColor,
      textColor: textColor,
      fontSize: fontSize,
    );
  }
}
