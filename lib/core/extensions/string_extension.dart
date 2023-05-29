import 'package:characters/characters.dart';

extension StringX on String {
  String get initials {
    final words = split(' ');
    return words.map((word) => word.characters.first.toUpperCase()).join();
  }
}
