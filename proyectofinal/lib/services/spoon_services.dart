import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:proyectofinal/models/spoon_model.dart';

class SpoonServices extends ChangeNotifier {
  //https://api.spoonacular.com/recipes/716429/information?apiKey=52e77738a0d74c6f8778b22966fda486&includeNutrition=true.json
  //https://api.spoonacular.com/recipes/mealplans/generate?apiKey=52e77738a0d74c6f8778b22966fda486&includeNutrition=true.json
  // https://api.spoonacular.com/recipes/716429/information?apiKey=YOUR-API-KEY&includeNutrition=true.
  final String _url = "api.calorieninjas.com";
  final String _apiKey = "EVQefKMJXT7+nJvI3IMxpQ==ZX4To3XzKpYGRpRW";

  List<Item> propiedad = [];

  SpoonServices() {
    //  print("Se conecto bien");
    mostrarInfo();
  }

  Future mostrarInfo() async {
    var url = Uri.https(_url, "/v1/nutrition", {'query': 'milk'});

    final response = await http.get(url, headers: {'X-Api-Key': _apiKey});

    final dieta = Alimentos.fromJson(response.body);
    propiedad = dieta.items!;

    print(propiedad[0].name);

    notifyListeners();
  }
}
