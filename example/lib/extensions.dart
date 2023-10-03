extension StringExtension on String {
  /// prefer_single_quotes
  String get capitalize {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}
