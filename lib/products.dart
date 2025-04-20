import 'package:ecommerce_app/product_details.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({Key? key}) : super(key: key);

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var products_list = [
    {
      "name":"T3 turbo",
      "img":"images/products/turboT3.png",
      "old_price":2199,
      "price":1899,
      "brand":"Biagio",
      "condition":"1 Year of use"
    },
    {
      "name":"GT spoiler",
      "img":"images/products/spoiler.jpg",
      "old_price":300,
      "price":179,
      "brand":"ford",
      "condition":"New"
    },
    {
      "name":"BBS 16",
      "img":"images/products/bbs.jpg",
      "old_price":4000,
      "price":3500,
      "brand":"BBS",
      "condition":"4 months of use"
    },
    {
      "name":"interior LED",
      "img":"images/products/led.jpg",
      "old_price":200,
      "price":150,
      "brand":"Sensation",
      "condition":"New"
    },
    {
      "name":"HKS exhaust",
      "img":"images/products/hks.jpg",
      "old_price":700,
      "price":350,
      "brand":"HKS",
      "condition":"New"
    },
    {
      "name":"K&N air filter",
      "img":"images/products/kn.jpg",
      "old_price":50,
      "price":35,
      "brand":"K&N",
      "condition":"New"
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: products_list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index){
        return Single_product(
          prod_name: products_list[index]["name"],
          prod_picture: products_list[index]["img"],
          prod_old_price: products_list[index]["old_price"],
          prod_price: products_list[index]["price"],
          prod_brand: products_list[index]["brand"],
          prod_condition: products_list[index]["condition"]
        );
      },
    );
  }
}

class Single_product extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;
  final prod_brand;
  final prod_condition;

  Single_product({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
    this.prod_brand,
    this.prod_condition,
});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Hero(
      tag: Text(prod_name,textAlign: TextAlign.left,),
      child: Material(
        child: InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => ProductDetails(
                prod_detail_name: prod_name,
                prod_detail_picture: prod_picture,
                prod_detail_old_price: prod_old_price,
                prod_detail_price: prod_price,
                prod_detail_brand :prod_brand,
                prod_detail_condition: prod_condition
              ))
            );
          },
          child: GridTile(
            footer: Container(
              color: Colors.white60,
              child: ListTile(
                leading: Text(prod_name, style: const TextStyle(fontWeight: FontWeight.bold),
                ),
                title: Text("\$${prod_price}",textAlign: TextAlign.end,
                  style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                subtitle:Text("\$${prod_old_price}",textAlign: TextAlign.end,
                  style: const TextStyle(color: Colors.black54, fontWeight: FontWeight.bold,
                      decoration: TextDecoration.lineThrough
                  ),),
              ),
            ),
            child: Image.asset(prod_picture, fit: BoxFit.cover,),
          ),
        ),
      ),
    ));
  }
}
