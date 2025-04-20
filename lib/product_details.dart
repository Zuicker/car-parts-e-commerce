import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {

  final prod_detail_name;
  final prod_detail_picture;
  final prod_detail_old_price;
  final prod_detail_price;
  final prod_detail_brand;
  final prod_detail_condition;

  ProductDetails({
    this.prod_detail_name,
    this.prod_detail_picture,
    this.prod_detail_old_price,
    this.prod_detail_price,
    this.prod_detail_brand,
    this.prod_detail_condition,
  });

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text("CarParts - by Zoicker"),
        actions: [
          new IconButton(icon: Icon(Icons.search, color: Colors.white,), onPressed: (){},),
          new IconButton(icon: Icon(Icons.shopping_cart, color: Colors.white,), onPressed: (){},)
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 300,
            child: GridTile(child:
                Container(
                  color: Colors.white,
                  child:Image.asset(widget.prod_detail_picture) ,
                ),
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(widget.prod_detail_name, style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 25),
                  ),
                  title: Text("\$${widget.prod_detail_price}",textAlign: TextAlign.end,
                    style: const TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontSize: 25),),
                  subtitle:Text("\$${widget.prod_detail_old_price}",textAlign: TextAlign.end,
                    style: const TextStyle(color: Colors.black54, fontWeight: FontWeight.bold,fontSize: 16,
                        decoration: TextDecoration.lineThrough
                    ),),
                ),
              ),
            ),
          ),
          Row(children: [
            Expanded(child: MaterialButton(onPressed: (){
              showDialog(context: context,
                  builder: (context){
                    return AlertDialog(
                      title: Text("Size"),
                      content: Text("Choose the size"),
                      actions: [
                        MaterialButton(onPressed: (){
                          Navigator.of(context).pop();
                        },
                            child: Text("done"),
                        ),
                      ],
                    );
              });
            },
              color: Colors.white,
              textColor: Colors.grey,
              elevation: 0.2,
              child: Row(children: [
                Expanded(child: Text("Size")),
                Expanded(child: Icon(Icons.arrow_drop_down))
              ],),
            ),),

            Expanded(child: MaterialButton(onPressed: (){
              showDialog(context: context,
                  builder: (context){
                    return AlertDialog(
                      title: Text("Color"),
                      content: Text("Choose the Color"),
                      actions: [
                        MaterialButton(onPressed: (){
                          Navigator.of(context).pop();
                        },
                          child: Text("done"),
                        ),
                      ],
                    );
                  });
            },
              color: Colors.white,
              textColor: Colors.grey,
              elevation: 0.2,
              child: Row(children: [
                Expanded(child: Text("Color")),
                Expanded(child: Icon(Icons.arrow_drop_down))
              ],),
            ),),

            Expanded(child: MaterialButton(onPressed: (){
              showDialog(context: context,
                  builder: (context){
                    return AlertDialog(
                      title: Text("Quantity"),
                      content: Text("Choose the qty"),
                      actions: [
                        MaterialButton(onPressed: (){
                          Navigator.of(context).pop();
                        },
                          child: Text("done"),
                        ),
                      ],
                    );
                  });
            },
              color: Colors.white,
              textColor: Colors.grey,
              elevation: 0.2,
              child: Row(children: [
                Expanded(child: Text("Qty")),
                Expanded(child: Icon(Icons.arrow_drop_down))
              ],),
            ),)
          ],),

          Row(children: [
            Expanded(child: MaterialButton(onPressed: (){},
              color: Colors.red,
              textColor: Colors.grey,
              elevation: 0.2,
              child: Row(children: [
                Expanded(child: Center(child: Text("Buy now", style: TextStyle(color: Colors.white),))),

              ],),
            ),),
            IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart, color: Colors.red,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border, color: Colors.red,))
          ],),
          Divider(),
          ListTile(
            title: Text("Product Description"),
            subtitle: Text("Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of de Finibus Bonorum et Malorum (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, Lorem ipsum dolor sit amet.., comes from a line in section 1.10.32."),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(children: [
              Text("Product name: "),
              Text(widget.prod_detail_name.toUpperCase(),style: TextStyle(fontWeight: FontWeight.bold),)
            ],),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(children: [
              Text("Product brand: "),
              Text(widget.prod_detail_brand.toUpperCase(),style: TextStyle(fontWeight: FontWeight.bold),)
            ],),
          ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.only(left: 20, bottom: 10),
            child: Row(children: [
              Text("Product condition: "),
              Text(widget.prod_detail_condition.toUpperCase(),style: TextStyle(fontWeight: FontWeight.bold),)
            ],),
          )
        ],
      ),
    );
  }
}
