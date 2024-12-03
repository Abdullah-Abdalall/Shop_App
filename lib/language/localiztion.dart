import 'package:get/route_manager.dart';
import 'package:shop/language/ar.dart';
import 'package:shop/language/en.dart';
import 'package:shop/language/fr.dart';
import 'package:shop/utils/my_string.dart';

class LocaliztionApp extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        ene: en,
        ara: ar,
        frf: fr,
      };
}
