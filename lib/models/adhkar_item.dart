class DhikrItem {
  final String title;
  final String arabicText;
  final int repeats;
  final bool isFavorite;
  final String category;

  const DhikrItem({
    required this.title,
    required this.arabicText,
    required this.repeats,
    required this.isFavorite,
    required this.category,
  });
}
