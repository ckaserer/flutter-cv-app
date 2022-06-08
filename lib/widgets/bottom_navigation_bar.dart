import 'package:ckaserer/constants/bottom_navigation.dart';
import 'package:ckaserer/constants/theme.dart';
import 'package:ckaserer/widgets/icon_button.dart';
import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  late final List<Widget> _children;

  MyBottomNavigationBar({Key? key}) : super(key: key) {
    List<Widget> myChildren = <Widget>[];
    for (int i = 0; i < BottomNavigation.links.length; i++) {
      myChildren.add(
        MyIconButton(
          key,
          icon: BottomNavigation.links[i].icon,
          onPressed: BottomNavigation.links[i].getUrlFunction(),
          tooltip: BottomNavigation.links[i].label,
          size: MyTheme.bottomNavigationBarIconButtonHeight,
        ),
      );
      if (i < BottomNavigation.links.length - 1) {
        myChildren.add(
          const SizedBox(
            width: MyTheme.bottomNavigationBarIconButtonSpacing,
          ),
        );
      }
    }
    _children = List.unmodifiable(myChildren);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MyTheme.bottomNavigationBarColor,
      height: MyTheme.bottomNavigationBarHeight,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: _children,
      ),
    );
  }
}
