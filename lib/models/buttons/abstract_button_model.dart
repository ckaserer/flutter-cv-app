import 'package:flutter/material.dart';

abstract class MyAbstractButtonModel {
  final VoidCallback onPressed;

  MyAbstractButtonModel({
    required this.onPressed,
  });
}
