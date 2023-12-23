import 'package:flutter/material.dart';
import 'package:user/components/cart_details.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Color(0xff1044fb),
        title: Text(
          'Cart',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'kadwa',
            fontWeight: FontWeight.w400,
          ),
        ),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              onPressed: () {}),
        ],
      ),
      body: new CartDetails(),

      bottomNavigationBar: Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
                child: ListTile(
              title: Text("Total:",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 17,color: Color(0xff1044fb)),),
              subtitle: Text("UgShs 302000",style: TextStyle(color: Color(0xff006600)),),
            )),
            Expanded(
                child: MaterialButton(
              onPressed: () {},
              child: Text(
                "Check out",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.red,
            ))
          ],
        ),
      ),
    );
  }
}
