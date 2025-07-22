
extension GermanNumberParsing on String {
  /// Converts a German-formatted number (e.g., "2.757,61") to a double.
  double toStandardDouble() {
    final normalized = replaceAll('.', '').replaceAll(',', '.');
    return double.parse(normalized);
  }

  /// Converts a German-formatted number (e.g., "2.757,61") to an int.
  int toStandardInt() {
    return toStandardDouble().toInt();
  }
}