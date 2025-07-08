// lib/models/project_model.dart
class Project {
  final String title;
  final String description;
  final String imageUrl;
  final List<String> technologies;
  final String? githubUrl;
  final String? playStoreUrl;
  final String? appStoreUrl;
  final String category;
  final bool isFeatured;

  Project({
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.technologies,
    this.githubUrl,
    this.playStoreUrl,
    this.appStoreUrl,
    required this.category,
    this.isFeatured = false,
  });
}
