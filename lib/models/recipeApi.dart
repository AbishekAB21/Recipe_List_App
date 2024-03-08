import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:recipe_list_app/models/recipe.dart';

class RecipeApi {


  static Future<List<Recipe>> getRecipe() async {
    var uri = Uri.https(
        'yummly2.p.rapidapi.com', '/feeds/list', {"limit": "24", "start": "0"});

    final response = await http.get(uri, headers: {
      'X-RapidAPI-Key': '1205496ba1msh31ca27151476d0fp144124jsn797e49c99981',
      'X-RapidAPI-Host': 'yummly2.p.rapidapi.com'
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for(var i in data['feed']){
      _temp.add(i['content']['details']);
    }

    return Recipe.recipesFromSnapshot(_temp);
  }
}
