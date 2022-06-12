import 'package:ckaserer/models/buttons/abstract_button_model.dart';
import 'package:flutter/material.dart';

class MySocialMediaButtonModel extends MyAbstractButtonModel {
  final IconData icon;
  final String tooltip;

  MySocialMediaButtonModel({
    required this.icon,
    required this.tooltip,
    required onPressed,
  }) : super(onPressed: onPressed);
}
