// lib/models/experience_model.dart
class Experience {
  final String company;
  final String position;
  final String duration;
  final String description;
  final List<String> achievements;
  final String? companyLogo;

  Experience({
    required this.company,
    required this.position,
    required this.duration,
    required this.description,
    required this.achievements,
    this.companyLogo,
  });
}
