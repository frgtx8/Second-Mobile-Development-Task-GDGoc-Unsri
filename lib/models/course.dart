class Course {
  final String id;
  final String title;
  final String category;
  final String description;
  bool isFavorite;

  Course({
    required this.id,
    required this.title,
    required this.category,
    required this.description,
    this.isFavorite = false,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'category': category,
      'description': description,
      'isFavorite': isFavorite ? 1 : 0,
    };
  }
}