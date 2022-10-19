import 'package:flutter/material.dart';

import '../models/item_desc.dart';

class BuyNow extends StatelessWidget {

  var itemDesc;

  BuyNow(this.itemDesc);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text(itemDesc.desc),
        centerTitle: true,
      ),
      body: Column(
        children: [
          itemDesc.image,
          Text("\u{20B9}${itemDesc.price.toString()}",
          style: TextStyle(
            fontSize: 40
          ),),
          ElevatedButton(
              onPressed: (){},
              child: Text("Place Order"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green[800],
              minimumSize: Size(200,40)
            )
          )
        ],
      ),
    );
  }
}
