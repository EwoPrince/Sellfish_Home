import 'package:flutter/foundation.dart';
import 'package:url_launcher/url_launcher.dart';

AsyncCallback launchLink(String url) {
  return () async {
    if (await canLaunchUrl(
      Uri.parse(url),
    )) {
      await canLaunchUrl(
        Uri.parse(url),
      );
    } else {
      throw 'Could not launch $url';
    }
  };
}
