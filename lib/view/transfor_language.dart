import 'package:get/route_manager.dart';

class TransforLanguage extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'title': 'Change language',
          'message': 'hello dear',
          'name': 'hadi'
        },
        'ur_PK': {
          'title': 'زبان تبدیل کریں',
          'message': 'ہیلو عزیز',
          'name': 'ہادی'
        }
      };
}
