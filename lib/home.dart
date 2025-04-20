import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'horizontal_listview.dart';
import 'products.dart';

// class HomePage extends StatelessWidget{
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//
//     );
//   }
// }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: MediaQuery.of(context).size.height * 0.3,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/img1.png'),
          AssetImage('images/img2.png'),
          AssetImage('images/img3.png'),
          AssetImage('images/img4.png'),
          AssetImage('images/img5.png'),
        ],
        autoplay: true,
        dotSize: 4.0,
        dotColor: Colors.red,
        indicatorBgPadding: 6.0,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text("CarParts - by Zoicker"),
        actions: [
          new IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          new IconButton(
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Henrique"),
            accountEmail: Text("henriquezuicker@gmail.com"),
            currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ))),
            decoration: BoxDecoration(color: Colors.red),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text("Home Page"),
              leading: Icon(Icons.home, color: Colors.red),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text("My Account"),
              leading: Icon(Icons.person, color: Colors.red),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text("My Orders"),
              leading: Icon(Icons.shopping_basket, color: Colors.red),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text("Categories"),
              leading: Icon(Icons.dashboard, color: Colors.red),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text("Favorites"),
              leading: Icon(Icons.favorite, color: Colors.red),
            ),
          ),
          Divider(),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings, color: Colors.grey),
            ),
          ),
          InkWell(
            onTap: () {},
            child: ListTile(
              title: Text("Help"),
              leading: Icon(Icons.help, color: Colors.blue),
            ),
          ),
        ],
      )),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          image_carousel,
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Categories",
              style: TextStyle(color: Colors.red),
            ),
          ),
          HorizontalList(),
          Padding(
            padding: const EdgeInsets.only(top: 20, left: 9, bottom: 10),
            child: Text(
              "Whats new?",
              style: TextStyle(color: Colors.red),
            ),
          ),
          Container(
            // height: MediaQuery.of(context).size.height * 0.8,
            child: Products(),
          )
        ],
      )),
    );
  }
}
