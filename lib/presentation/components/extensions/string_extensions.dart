extension StringCasingExtension on String {

  String capitalizeFirst() {
    if (isEmpty) return this;
    return "${this[0].toUpperCase()}${substring(1)}";
  }

  String toTitleCase() {
    return replaceAllMapped(
      RegExp(r'[A-Z]'),
      (match) => ' ${match.group(0)}',
    ).trim().replaceFirstMapped(
      RegExp(r'^[a-z]'),
      (match) => match.group(0)!.toUpperCase(),
    );
  }
  
}
