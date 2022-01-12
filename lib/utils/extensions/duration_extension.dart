part of 'extension.dart';

extension DurationExtension on int {
  Future<void> get secDelay => Future.delayed(Duration(seconds: this));
  Future<void> get millSecDelay => Future.delayed(Duration(milliseconds: this));
}

