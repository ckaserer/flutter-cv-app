import 'package:ckaserer/models/buttons/abstract_button_model.dart';
import 'package:flutter/material.dart';

class MyContactInfoButtonModel extends MyAbstractButtonModel {
  final IconData icon;
  final String label;

  MyContactInfoButtonModel({
    required this.icon,
    required this.label,
    required onPressed,
  }) : super(onPressed: onPressed);
}
