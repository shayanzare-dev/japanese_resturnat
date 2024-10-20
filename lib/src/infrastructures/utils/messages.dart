import 'package:get/get.dart';

import 'locales/en.dart';
import 'locales/fa.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': enData,
        'fa_IR': faData,
      };
}
