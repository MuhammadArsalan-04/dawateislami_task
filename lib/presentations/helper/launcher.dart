import 'package:external_app_launcher/external_app_launcher.dart';

launchPlayStoreAppUrl(appStoreLink) async {
  await LaunchApp.openApp(
    androidPackageName: appStoreLink,
  );
}
