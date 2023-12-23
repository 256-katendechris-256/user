import 'package:flutter/material.dart';

class ServiceDetails extends StatefulWidget {
  final serv_detail_price;
  final serv_detail_name;
  final serv_detail_pic;

  const ServiceDetails(
      {super.key,
      this.serv_detail_price,
      this.serv_detail_name,
      this.serv_detail_pic});

  @override
  State<ServiceDetails> createState() => _ServiceDetailsState();
}

class _ServiceDetailsState extends State<ServiceDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        backgroundColor: Color(0xff1044fb),
        title: Text(
          'Konne',
          style: TextStyle(
            color: Colors.white,
            fontFamily: 'kadwa',
            fontWeight: FontWeight.w800,
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
      body: new ListView(
        children: <Widget>[
          Container(
            height: 280,
            child: GridTile(
              child: Container(
                color: Colors.white,
                child: Image.asset(
                  widget.serv_detail_pic,
                  fit: BoxFit.cover,
                ),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(
                    widget.serv_detail_name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  title: Row(
                    children: <Widget>[
                      Expanded(
                          child: Text(
                        "Ugsh ${widget.serv_detail_price}",
                        style: TextStyle(
                          color: Color(0xff006600),
                        ),
                      )),
                      Expanded(
                          child: MaterialButton(
                        onPressed: () {
                          showDialog(context: context, builder: (context){
                            //shows an alert dialog on screen as stack
                            return AlertDialog(
                              title: Text("More"),
                              content: Text("Contact us for negotions"),
                              actions:<Widget> [
                                new MaterialButton(onPressed: (){
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("Close"),)
                              ],
                            );

                          });

                        },
                        color: Colors.white,
                        textColor: Colors.blue,
                        //elevation: 0.2,
                        child: Row(
                          children: <Widget>[
                            Expanded(child: Text("More")),
                            Expanded(child: Icon(Icons.arrow_drop_down)),
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Expanded(
                  child: MaterialButton(
                onPressed: () {},

                color: Colors.blue,
                textColor: Colors.white,
                elevation: 0.2,
                child: Row(

                  children: <Widget>[
                    Expanded(

                      child: Text(
                        "Place Order",
                      ),

                    ),
                    new IconButton(onPressed: (){}, icon: Icon(Icons.add_shopping_cart,color: Colors.white,)),

                    new IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border,color: Colors.white))

                  ],
                ),

              )),

            ],
          ),
          //Divider(),
          ListTile(
            title: Text("Services details",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w900
            ),),
            subtitle: Text("This is just a basic structure of the product details should appear like and it ought to have been stored in the database This is just a basic structure of the product details should appear like and it ought to have been stored in the database This is just a basic structure of the product details should appear like and it ought to have been stored in the database"),
          ),
          Divider(),
          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12,5,5,5),
                child: Text("Service",style: TextStyle(color: Colors.grey),),),
             Padding(padding: EdgeInsets.all(5),
               child: Text(widget.serv_detail_name),
              )],
          ),

          Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12,5,5,5),
                child: Text("Service Provider",style: TextStyle(color: Colors.grey),),),
              Padding(padding: EdgeInsets.all(5),
                child: Text("Company name"),
              )],
          ),
          //Similars
          Divider(),
          Padding(padding: EdgeInsets.all(8),
          child: Text("Similar Offers"),
          ),
          Container(
            height: 360,
            child: Similar_offers(),
          )
        ],
      ),
    );
  }
}
class Similar_offers extends StatefulWidget {

  const Similar_offers({super.key});

  @override
  State<Similar_offers> createState() => _Similar_offersState();
}

class _Similar_offersState extends State<Similar_offers> {
  var service_list = [
    {
      "name": "Electrical",
      "picture": "images/elec.jpeg",
      "old_rate": 360000,
      "rate": 270000,
    },
    {
      "name": "Gardening",
      "picture": "images/gardening.jpeg",
      "old_rate": 130000,
      "rate": 79000,
    },
    {
      "name": "Laundry",
      "picture": "images/laundry.jpeg",
      "old_rate": 130000,
      "rate": 45000,
    },
    {
      "name": "Catering",
      "picture": "images/catering.jpeg",
      "old_rate": 130000,
      "rate": 79000,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: service_list.length,
      gridDelegate:
      new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Similar_Service_details(
          serv_name: service_list[index]['name'],
          serv_pic: service_list[index]['picture'],
          serv_price: service_list[index]['rate'],
        );
      },
    );
  }
}
class Similar_Service_details extends StatelessWidget {
  final serv_name;
  final serv_pic;
  final serv_price;

  const Similar_Service_details(
      {super.key,
        this.serv_name,
        this.serv_pic,
        this.serv_price});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: serv_name,
        child: Material(
          child: InkWell(
            onTap: () =>Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ServiceDetails(
              //passing values to the service details page for more info
              serv_detail_name: serv_name,
              serv_detail_pic: serv_pic,
              serv_detail_price: serv_price,
            ))),
            child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: ListTile(
                    leading: Text(
                      serv_name,
                      style: TextStyle(fontWeight: FontWeight.w900),
                    ),
                    title: Text('\Shs$serv_price',style: TextStyle(fontSize: 10),),
                  ),
                ),
                child: Image.asset(serv_pic, fit: BoxFit.cover)),
          ),
        ),
      ),
    );
  }
}