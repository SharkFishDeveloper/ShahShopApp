import 'package:flutter/material.dart';
import 'package:kaif_app/widgets/indivisual_card.dart';
import '../models/item_desc.dart';

class FirstScreen extends StatelessWidget {
  List<ItemDesc> list_Of_ItemObj = [
    ItemDesc(Image.asset('assets/images/shoes-flutter.jpg', height: 140),
        "This is new pair of shoes", 90.00, "4.5"),
    ItemDesc(Image.asset('assets/images/glasses.flutter.jpg', height: 140),
        "This is new pair of Glasses", 56.00, "4.2"),
    ItemDesc(
        Image.asset(
          'assets/images/socks.flutter.jpg',
          height: 140,
        ),
        "This is new pair of socks",
        78.00,
        "3.8"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow[50],
      appBar: AppBar(
        backgroundColor: Colors.orange,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
        ],
        title: Text("Shah App"),
      ),
      body: Container(
          margin: EdgeInsets.only(top: 20),
          height: 400,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: list_Of_ItemObj.length,
              itemBuilder: (context, index) {
                return IndivisualItem(list_Of_ItemObj, index);
              })),
    );
  }
}
