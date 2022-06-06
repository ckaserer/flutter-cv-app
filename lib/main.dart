import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:homepage/constants/settings.dart';
import 'package:homepage/constants/theme.dart';
import 'package:homepage/screens/contact_page.dart';
import 'package:homepage/widgets/bottom_navigation_bar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: Settings.domain,
      home: Scaffold(
        backgroundColor: MyTheme.accentColor,
        body: kIsWeb
            ? const ContactPage(width: 400)
            : const ContactPage(width: double.infinity),
        bottomNavigationBar: MyBottomNavigationBar(),
      ),
    );
  }
}
