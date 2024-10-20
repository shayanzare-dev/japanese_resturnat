import 'language_view_model.dart';

class AppLanguage {
  static const String countryCode = 'country_code';
  static const String languageCode = 'language_code';

  static const List<LanguageViewModel> languages = [
    LanguageViewModel(
        imageUrl: '🇮🇷',
        languageName: 'iran',
        languageCode: 'fa',
        countryCode: '+98'),
    LanguageViewModel(
        imageUrl: 'GB',
        languageName: 'english',
        languageCode: 'en',
        countryCode: '+44'),
  ];
}
