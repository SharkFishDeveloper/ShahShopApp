import 'package:flutter/material.dart';
import 'package:kaif_app/screens/buynow_screen.dart';
import '../widgets/bottom_sheet.dart';
import '../models/item_desc.dart';

class IndivisualItem extends StatelessWidget {
  List<ItemDesc> list_Of_ItemObj;
  int index;

  IndivisualItem(this.list_Of_ItemObj, this.index);

  void startSheet(BuildContext context){
    showModalBottomSheet(context: context, builder: (_){
      return MyBottomSheet();
    }
    ,
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
    ),);
  }
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(40),
      child: Card(
        //margin: EdgeInsets.symmetric(horizontal: 20),
        elevation: 6,
        color: Colors.orange[50],
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Container(child: list_Of_ItemObj[index].image),
                ),
              ),
              Text(
                list_Of_ItemObj[index].desc,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    "\u{20B9}${list_Of_ItemObj[index].price.toString()}",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold,color: Colors.blue[900]),
                  ),
                  SizedBox(width: 80),
                  CircleAvatar(
                      backgroundColor: Colors.blue[900],
                      radius: 30,
                      child: Text("${list_Of_ItemObj[index].rating}/5.0")),
                ],
              ),
              Container(
                width: 200,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.orange[300]
                  ),
                    onPressed: () => startSheet(context),
                    child: Text(
                      "Add to cart",
                      style: TextStyle(fontWeight: FontWeight.w900,color: Colors.blue[900]),
                    )),
              ),
              Container(
                width: 200,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.orange
                  ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  BuyNow(list_Of_ItemObj[index])));
                    },
                    child: Text("Buy Now",
                        style: TextStyle(fontWeight: FontWeight.w900,color:Colors.blue[900]))),
              )
            ],
          ),
        ),
      ),
    )
    ;
  }
}
