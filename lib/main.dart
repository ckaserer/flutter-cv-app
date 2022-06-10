import 'package:ckaserer/constants/settings.dart';
import 'package:ckaserer/constants/theme.dart';
import 'package:ckaserer/screens/contact_page.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: Settings.domain,
      home: Scaffold(
        backgroundColor: MyTheme.accentColor,
        body: kIsWeb
            ? ContactPage(
                width: 350,
                height: 600,
              )
            : ContactPage(
                width: double.infinity,
                height: double.infinity,
              ),
      ),
    );
  }
}
