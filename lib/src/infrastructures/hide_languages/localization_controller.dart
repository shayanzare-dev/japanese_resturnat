import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app_language.dart';
import 'language_view_model.dart';

class LocalizationController extends GetxController implements GetxService {
  int _selectedIndex = 0;
  List<LanguageViewModel> _languages = [];
  Locale _locale = Locale(AppLanguage.languages.first.languageCode,
      AppLanguage.languages.first.countryCode);

  final SharedPreferences sharedPreferences;

  LocalizationController({required this.sharedPreferences}) {
    // todo(shayan zare):  loadCurrentLanguage()
  }

  int get selectedIndex => _selectedIndex;

  Locale get locale => _locale;

  List<LanguageViewModel> get languages => _languages;

  void _loadCurrentLanguage() {
    _locale = Locale(
        sharedPreferences.getString(AppLanguage.languageCode) ??
            AppLanguage.languages.first.languageCode,
        sharedPreferences.getString(AppLanguage.countryCode) ??
            AppLanguage.languages.first.languageCode);

    for (int index = 0; index < AppLanguage.languages.length; index++) {
      if (AppLanguage.languages[index].languageCode == _locale.languageCode) {
        _selectedIndex = index;
        break;
      }
    }
    _languages = [];
    _languages.addAll(AppLanguage.languages);
    update();
  }
}
