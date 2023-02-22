extension StringExtension on String {
  List<String> toList() {
    return split('');
  }

  bool isNumeric() {
    return double.tryParse(this) != null;
  }
}
