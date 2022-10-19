import 'package:flutter/material.dart';
import 'package:kaif_app/widgets/indivisual_card.dart';
import '../models/item_desc.dart';

class FirstScreen extends StatelessWidget {
  List<ItemDesc> list_Of_ItemObj = [
    ItemDesc(
        Image.asset(
          'assets/images/shoes-flutter.jpg',
          height: 160,
          width: 190,
          fit: BoxFit.cover,
        ),
        "This is new pair of shoes",
        90.00,
        "4.5"),
    ItemDesc(
        Image.asset(
          'assets/images/glasses.flutter.jpg',
          height: 160,
          width: 190,
          fit: BoxFit.cover,
        ),
        "This is new pair of Glasses",
        56.00,
        "4.2"),
    ItemDesc(
        Image.asset(
          'assets/images/socks.flutter.jpg',
          height: 160,
          width: 190,
          fit: BoxFit.cover,
        ),
        "This is new pair of socks",
        78.00,
        "3.8"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.orange,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
        ],
        title: Text("Shah App"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10),
        child: Container(
            margin: EdgeInsets.only(top: 20),
            height: 400,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: list_Of_ItemObj.length,
                itemBuilder: (context, index) {
                  return IndivisualItem(list_Of_ItemObj, index);
                })),
      ),
    );
  }
}
