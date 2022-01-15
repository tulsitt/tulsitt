import 'dart:ui';

import 'package:get/get.dart';

class Localization extends Translations {
  // Default locale
  static const Locale locale = Locale('en', 'US');

  // fallbackLocale saves the day when the locale gets in trouble
  static const Locale fallbackLocale = Locale('en', 'US');

  static final List<String> langs = <String>[
    'English',
  ];
  static final List<Locale> supportedLocales = <Locale>[
    const Locale('en', 'US'),
  ];

  void changeLocale(String lang) {
    final Locale? locale = _getLocaleFromLanguage(lang);
    Get.updateLocale(locale!);
  }

  // Finds language in `langs` list and returns it as Locale
  Locale? _getLocaleFromLanguage(String lang) {
    for (int i = 0; i < langs.length; i++) {
      if (lang == langs[i]) return supportedLocales[i];
    }
    return Get.locale;
  }

  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': {
          'something_wrong':
              'Error occurred while Communication with Server, please try again',
          'error_occurred':
              'Error occurred while Communication with Server, please try again',
          'unexpected_error': 'Unexpected internal server error.',
          'wifi_message':
              'Make sure that mobile data or Wi-Fi is turn on, then try again',
          'network_error':
              'You must connect to Wi-fi or a Cellular Network to get online again',
          ' unexpected_error': 'Unexpected internal server error.',
          'unauthorised': 'Unauthorised, please login again',
          'game_empty': 'No game found',
          'game_details_empty': 'Game detail not found.',
          'try_again': 'Try Again',
          'Score': 'Score',
          'genres': 'Genres',
          'publishers': 'Publishers',
          'platforms': 'Platforms',
          'video_game': 'Video Game',

        },

        /// you can add more language string here
      };
}
