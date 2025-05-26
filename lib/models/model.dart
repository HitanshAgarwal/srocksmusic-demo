import 'package:cloud_firestore/cloud_firestore.dart';

class ServiceCard {
  final String title;
  final String description;
  final String icon_path;
  final String bg_path;

  ServiceCard({
    required this.title,
    required this.description,
    required this.icon_path,
    required this.bg_path,
  });

  factory ServiceCard.fromFirestore(DocumentSnapshot doc) {
    final data = doc.data() as Map<String, dynamic>;
    return ServiceCard(
      title: data['title'],
      description: data['description'],
      icon_path: data['icon_path'],
      bg_path: data['bg_path'],
    );
  }
}
