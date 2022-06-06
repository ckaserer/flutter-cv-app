import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyIconButtonModel {
  final IconData icon;
  final String url;
  final String label;

  const MyIconButtonModel({
    required this.icon,
    required this.url,
    required this.label,
  });

  VoidCallback getUrlFunction() {
    return () {
      launchUrl(Uri.parse(url));
    };
  }
}
