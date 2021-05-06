import 'package:get/get.dart';

class Message extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': {'hello': 'Hello'},
        'hi_IN': {'hello': 'नमस्ते'},
        'fr_FR': {'hello': 'Bonjour'}
      };
}
