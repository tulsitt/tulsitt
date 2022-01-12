const ENV env = ENV.development;

enum ENV {
  development,
}

extension ConfigExt on ENV {
  String get baseUrl {
    switch (this) {
      case ENV.development:
        return 'https://api.rawg.io/api/games';
    }
  }
}
