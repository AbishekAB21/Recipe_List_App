
class Recipe {
  final String name;
  final String images;
  final double rating;
  final String totalTime;

  Recipe(
      {required this.name,
      required this.images,
      required this.rating,
      required this.totalTime});

  factory Recipe.fromJson(dynamic json) {
    if (json == null) {
      // Handle the case where json is null, e.g., return a default Recipe
      return Recipe(
        name: 'Butter Chicken',
        images: 'https://niksharmacooks.com/wp-content/uploads/2022/11/ButterChickenDSC_5616.jpg',
        rating: 4.0,
        totalTime: '40 min',
      );
    }

    return Recipe(
      name: json['name'] as String? ?? 'Butter Chicken',
      images: (json['images'] != null &&
              json['images'] is List &&
              json['images'].isNotEmpty)
          ? (json['images'][0]['hostedLargeUrl'] as String?) ?? 'https://niksharmacooks.com/wp-content/uploads/2022/11/ButterChickenDSC_5616.jpg'
          : '',
      rating: (json['rating'] as double?) ?? 3.0,
      totalTime: json['totalTime'] as String? ?? '40 min',
    );
  }

  static List<Recipe> recipesFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Recipe.fromJson(data);
    }).toList();
  }

  @override
  String toString() {
    return ' Recipe(name: $name, images: $images, rating: $rating, totalTime: $totalTime)';
  }
}
