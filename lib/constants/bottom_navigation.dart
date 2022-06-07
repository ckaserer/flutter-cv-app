import 'package:ckaserer/models/icon_button_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavigation {
  static const List<MyIconButtonModel> links = [
    MyIconButtonModel(
      icon: FontAwesomeIcons.linkedin,
      url: "https://linkedin.com/in/ckaserer",
      label: "LinkedIn",
    ),
    MyIconButtonModel(
      icon: FontAwesomeIcons.github,
      url: "https://github.com/ckaserer",
      label: "Github",
    ),
    MyIconButtonModel(
      icon: FontAwesomeIcons.stackOverflow,
      url: "https://stackoverflow.com/users/12153397/ckaserer",
      label: "StackOverflow",
    ),
  ];
}
