import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlUtils {
  static VoidCallback launchUrlFunc({required String url}) {
    return () {
      launchUrl(Uri.parse(url));
    };
  }
}
