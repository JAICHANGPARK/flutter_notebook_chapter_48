class CookingRecipe {
  final int id;
  final String name;
  final String description;
  final String imageUrl;

  CookingRecipe({
    required this.id,
    required this.name,
    required this.description,
    required this.imageUrl,
  });

  factory CookingRecipe.fromJson(Map<String, dynamic> json) {
    return CookingRecipe(
      id: json['id'] as int,
      name: json['name'] as String,
      description: json['description'] as String? ?? '',
      imageUrl: json['image_url'] as String,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'image_url': imageUrl,
    };
  }
}
