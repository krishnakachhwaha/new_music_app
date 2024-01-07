import 'package:flutter/material.dart';

class Buttons {
  static CustomButton(String buttonName, VoidCallback callback) {
    return ElevatedButton(
        onPressed: () {
          callback();
        },
        child: Text(buttonName));
  }
}
