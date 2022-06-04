import 'dart:convert';

class Alimentos {
  Alimentos({
    this.items,
  });

  List<Item>? items;

  factory Alimentos.fromJson(String str) => Alimentos.fromMap(json.decode(str));

  factory Alimentos.fromMap(Map<String, dynamic> json) => Alimentos(
        items: List<Item>.from(json["items"]!.map((x) => Item.fromMap(x))),
      );
}

class Item {
  Item({
    required this.sugarG,
    required this.fiberG,
    required this.servingSizeG,
    required this.sodiumMg,
    required this.name,
    required this.potassiumMg,
    required this.fatSaturatedG,
    required this.fatTotalG,
    required this.calories,
    required this.cholesterolMg,
    required this.proteinG,
    required this.carbohydratesTotalG,
  });

  int sugarG;
  int fiberG;
  int servingSizeG;
  int sodiumMg;
  String name;
  int potassiumMg;
  double fatSaturatedG;
  double fatTotalG;
  double calories;
  int cholesterolMg;
  double proteinG;
  double carbohydratesTotalG;

  factory Item.fromJson(String str) => Item.fromMap(json.decode(str));

  factory Item.fromMap(Map<String, dynamic> json) => Item(
        sugarG: json["sugar_g"].toInt(),
        fiberG: json["fiber_g"].toInt(),
        servingSizeG: json["serving_size_g"].toInt(),
        sodiumMg: json["sodium_mg"].toInt(),
        name: json["name"],
        potassiumMg: json["potassium_mg"].toInt(),
        fatSaturatedG: json["fat_saturated_g"].toDouble(),
        fatTotalG: json["fat_total_g"].toDouble(),
        calories: json["calories"].toDouble(),
        cholesterolMg: json["cholesterol_mg"],
        proteinG: json["protein_g"].toDouble(),
        carbohydratesTotalG: json["carbohydrates_total_g"].toDouble(),
      );
}
