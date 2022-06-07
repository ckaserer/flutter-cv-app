import 'package:ckaserer/models/icon_button_model.dart';
import 'package:flutter/material.dart';

class ContactDetails {
  static const String name = 'Clemens Kaserer';
  static const String jobTitle = 'CLOUD ARCHITECT';
  static const String avatarImagePath = 'assets/images/clemens.jpg';
  static const MyIconButtonModel phone = MyIconButtonModel(
    icon: Icons.phone,
    label: "+43 (0) 123 456 78 90",
    url: "tel:+43-123-456-78-90",
  );
  static const MyIconButtonModel mail = MyIconButtonModel(
    icon: Icons.mail,
    label: "ckaserer@gmail.com",
    url: "mailto:ckaserer@gmail.com",
  );
}
