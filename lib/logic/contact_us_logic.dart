import 'package:url_launcher/url_launcher.dart';

class ContactUsLogic {
  void openUrlApp(String link) async {
    final Uri url = Uri.parse(link);

    if (await canLaunchUrl(url)) {
      await launchUrl(url, mode: LaunchMode.externalApplication);
    } else {
      print('لا يمكن فتح تطبيق الإيميل');
    }
  }
}
