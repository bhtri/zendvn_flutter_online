// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class CategoryModel {
  int id;
  String name;
  String slug;
  bool isFavorite;
  String image;
  String color;

  CategoryModel({
    required this.id,
    required this.name,
    this.slug = '',
    this.isFavorite = false,
    this.image = '',
    this.color = '',
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'slug': slug,
      'isFavorite': isFavorite,
      'image': image,
      'color': color,
    };
  }

  factory CategoryModel.fromMap(Map<String, dynamic> map) {
    return CategoryModel(
      id: map['id'] as int,
      name: map['name'] as String,
      slug: map['slug'] as String,
      isFavorite: map['isFavorite'] ?? false,
      image: map['image'] ?? '',
      color: map['color'] ?? '#587246',
    );
  }

  String toJson() => json.encode(toMap());

  factory CategoryModel.fromJson(String source) => CategoryModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
