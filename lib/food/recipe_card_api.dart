import 'dart:convert';
import 'recipe_model.dart';
import 'package:http/http.dart' as http;

class RecipeApi {
  // const axios = require('axios');
  //
  // const options = {
  //   method: 'GET',
  //   url: 'https://yummly2.p.rapidapi.com/feeds/list',
  //   params: {
  //     limit: '24',
  //     start: '0'
  //   },
  //   headers: {
  //     'X-RapidAPI-Key': 'b2d4911befmshb56388f88c5b25ep11cbb9jsn92b480187326',
  //     'X-RapidAPI-Host': 'yummly2.p.rapidapi.com'
  //   }
  // };

  static Future<List<Recipe>> getRecipe() async {
    var uri = Uri.https(
        'yummly2.p.rapidapi.com', '/feeds/list', {"limit": '24', "start": '0'});

    final response = await http.get(uri, headers: {
      'X-RapidAPI-Key': 'b2d4911befmshb56388f88c5b25ep11cbb9jsn92b480187326',
      'X-RapidAPI-Host': 'yummly2.p.rapidapi.com'
    });

    Map data = jsonDecode(response.body);
    List _temp = [];

    for (var i in data['feed']) {
      _temp.add(i['content']['details']);
    }

    return Recipe.recipesFromSnapshot(_temp);
  }
}
