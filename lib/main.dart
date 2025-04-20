import 'package:flutter/material.dart';
import 'food/food_commons.dart';
import 'package:ecommerce_app/food/recipe_card.dart';
import 'food/recipe_card_api.dart';
import 'food/recipe_model.dart';
import 'home.dart';

void main() {
  runApp(
    const MaterialApp(
      title: "Food App",
      debugShowCheckedModeBanner: false,
      home: foodApp(),
    ),
  );
}

class foodApp extends StatefulWidget {
  const foodApp({Key? key}) : super(key: key);

  @override
  State<foodApp> createState() => _foodAppState();
}

class _foodAppState extends State<foodApp> {
  List<Recipe> _recipes = [];
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    getRecipes();
  }

  Future<void> getRecipes() async {
    _recipes = await RecipeApi.getRecipe();
    setState(() {
      _isLoading = false;
    });
    print(_recipes);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.restaurant_menu,
              color: black,
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              "Food Recipe",
              style: TextStyle(color: black),
            )
          ],
        ),
      ),
      body:
          // _isLoading ? Center(child: CircularProgressIndicator()) :
          ListView.builder(
        itemCount: _recipes.length,
        itemBuilder: (context, index) {
          return RecipeCard(
              title: _recipes[index].name,
              cookTime: _recipes[index].totalTime,
              rating: _recipes[index].rating.toString(),
              thumbnailUrl: _recipes[index].images);
        },
      ),
    );
  }
}

// class foodApp extends StatefulWidget {
//   const foodApp({Key? key}) : super(key: key);
//
//   @override
//   State<foodApp> createState() => _foodAppState();
// }
//
// class _foodAppState extends State<foodApp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: white,
//       body: ListView(
//         children: <Widget>[Text("What would you like to eat")
//       ],),
//     );
//   }
// }

class AlternativeHomePage extends StatefulWidget {
  const AlternativeHomePage({Key? key}) : super(key: key);

  @override
  State<AlternativeHomePage> createState() => _AlternativeHomePageState();
}

class _AlternativeHomePageState extends State<AlternativeHomePage> {
  var products = [
    {
      "name": "pão",
      "isMarked": false,
      "old_price": 2199,
      "price": 1899,
      "brand": "Biagio",
      "condition": "1 Year of use"
    },
    {
      "name": "maçã",
      "isMarked": false,
      "old_price": 300,
      "price": 179,
      "brand": "ford",
      "condition": "New"
    },
    {
      "name": "chocolate",
      "isMarked": false,
      "old_price": 4000,
      "price": 3500,
      "brand": "BBS",
      "condition": "4 months of use"
    },
    {
      "name": "sabonete",
      "isMarked": false,
      "old_price": 200,
      "price": 150,
      "brand": "Sensation",
      "condition": "New"
    },
    {
      "name": "papel higiênico",
      "isMarked": false,
      "old_price": 700,
      "price": 350,
      "brand": "HKS",
      "condition": "New"
    },
    {
      "name": "cimento",
      "isMarked": false,
      "old_price": 50,
      "price": 35,
      "brand": "K&N",
      "condition": "New"
    },
    {
      "name": "chiclete",
      "isMarked": false,
      "old_price": 50,
      "price": 35,
      "brand": "K&N",
      "condition": "New"
    },
    {
      "name": "presunto",
      "isMarked": false,
      "old_price": 50,
      "price": 35,
      "brand": "K&N",
      "condition": "New"
    },
    {
      "name": "picanha fazueli",
      "isMarked": false,
      "old_price": 50,
      "price": 35,
      "brand": "K&N",
      "condition": "New"
    },
    {
      "name": "abobora",
      "isMarked": false,
      "old_price": 50,
      "price": 35,
      "brand": "K&N",
      "condition": "New"
    },
    {
      "name": "cenoura",
      "isMarked": false,
      "old_price": 50,
      "price": 35,
      "brand": "K&N",
      "condition": "New"
    },
    {
      "name": "cogu",
      "isMarked": false,
      "old_price": 50,
      "price": 35,
      "brand": "K&N",
      "condition": "New"
    },
    {
      "name": "oleo motul",
      "isMarked": false,
      "old_price": 50,
      "price": 35,
      "brand": "K&N",
      "condition": "New"
    },
  ];

  var isMarked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        title: Text("Testing"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.help_outline))],
      ),
      body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  products[index]["isMarked"] == false
                      ? products[index]["isMarked"] = true
                      : products[index]["isMarked"] = false;
                });
              },
              child: Container(
                  decoration: BoxDecoration(
                      color: products[index]["isMarked"] == false
                          ? Colors.grey
                          : Colors.green,
                      borderRadius: BorderRadius.circular(10)),
                  margin:
                      EdgeInsets.only(top: 10, left: 20, bottom: 10, right: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              products[index]["name"].toString(),
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                          Checkbox(
                            hoverColor: Colors.black,
                            activeColor: Colors.green,
                            value: products[index]["isMarked"] == false
                                ? isMarked = false
                                : isMarked = true,
                            onChanged: (newValue) {
                              setState(() {
                                products[index]["isMarked"] == false
                                    ? products[index]["isMarked"] = true
                                    : products[index]["isMarked"] = false;
                              });
                            }, //  <-- leading Checkbox
                          )
                        ],
                      )
                    ],
                  )),
            );
          }),
    );
  }
}
