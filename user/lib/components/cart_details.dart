import 'package:flutter/material.dart';

class CartDetails extends StatefulWidget {
  const CartDetails({super.key});

  @override
  State<CartDetails> createState() => _CartDetailsState();
}

class _CartDetailsState extends State<CartDetails> {
  var Services_in_cart = [
    {
      "name": "Electrical",
      "picture": "images/elec.jpeg",
      "rate": 270000,
    },
    {
      "name": "Catering",
      "picture": "images/catering.jpeg",
      "rate": 32000,
    },
  ]
  ;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: Services_in_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_service(
            cart_prdt_name: Services_in_cart[index]["name"],
            cart_prdt_pic: Services_in_cart[index]["picture"],
            cart_prdt_rate: Services_in_cart[index]["rate"],
          );
        });
  }
}

class Single_cart_service extends StatelessWidget {
  final cart_prdt_name;
  final cart_prdt_pic;
  final cart_prdt_rate;

  const Single_cart_service(
      {super.key,
      this.cart_prdt_name,
      this.cart_prdt_pic,
      this.cart_prdt_rate});

  @override
  Widget build(BuildContext context) {
    return  Card(
      child: ListTile(
        leading: Image.asset(cart_prdt_pic,width: 100,height: 100,fit: BoxFit.fitWidth,),
        title: Text(cart_prdt_name),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(child: Text("Rate:")),
                Padding(padding: EdgeInsets.fromLTRB(5, 5, 12, 5),
                child: Text("UgShs ${cart_prdt_rate}",style: TextStyle(color: Color(0xff006600)),),)
              ],
            )
          ],
        ),
      ),
    );
  }
}
