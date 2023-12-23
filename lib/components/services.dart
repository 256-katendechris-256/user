import 'package:flutter/material.dart';
import 'package:user/pages/servicedetails.dart';

class Services extends StatefulWidget {
  const Services({super.key});

  @override
  State<Services> createState() => _ServicesState();
}

class _ServicesState extends State<Services> {
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
    },
    {
      "name": "Catering",
      "picture": "images/catering.jpeg",
      "old_rate": 130000,
      "rate": 79000,
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
        return Service_details(
          serv_name: service_list[index]['name'],
          serv_pic: service_list[index]['picture'],
          serv_price: service_list[index]['rate'],
        );
      },
    );
  }
}

class Service_details extends StatelessWidget {
  final serv_name;
  final serv_pic;
  final serv_price;

  const Service_details(
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
