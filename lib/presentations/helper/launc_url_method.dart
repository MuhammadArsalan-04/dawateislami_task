
import 'package:url_launcher/url_launcher.dart';

Future<void> urlLauncherMethod(String sentParam) async {
  final Uri _url = Uri(
    scheme: "tel",
    path: sentParam,

  );
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}