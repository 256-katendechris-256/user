import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lecle_flutter_carousel_pro/lecle_flutter_carousel_pro.dart';
import 'package:user/components/horizontalListView.dart';

import 'cart.dart';
import '../components/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 200,
      child: Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/mechanic.jpeg'),
          AssetImage('images/plumbing.jpeg'),
          AssetImage('images/elec.jpeg'),
          AssetImage('images/carpentry.jpeg'),
          AssetImage('images/gardening.jpeg'),
          AssetImage('images/shoe.jpeg'),
          AssetImage('images/catering.jpeg'),
          AssetImage('images/events.jpeg'),
          AssetImage('images/laundry.jpeg'),
        ],
       // autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1500),
        indicatorBgPadding: 4,
        dotColor: Colors.transparent,
      ),
    );
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
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Cart()));
              }),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: [
            //header for the navigation bar

            new UserAccountsDrawerHeader(
              accountName: Text('Katende'),
              accountEmail: Text('katendechris5@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.blueGrey,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
              decoration: new BoxDecoration(
                color: Color(0xff1044fb),
              ),
            ),
            // body of the side navigation bar
            InkWell(
              //inkwell makes thes fields clickable
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(
                  Icons.home,
                  color: Color(0xff1044fb),
                ),
              ),
            ),

            InkWell(
              //inkwell makes thes fields clickable
              onTap: () {},
              child: ListTile(
                title: Text('My Services'),
                leading: Icon(
                  Icons.shopping_basket,
                  color: Color(0xff1044fb),
                ),
              ),
            ),
            InkWell(
              //inkwell makes thes fields clickable
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Cart()));
              },
              child: ListTile(
                title: Text('Cart'),
                leading: Icon(
                  Icons.shopping_cart,
                  color: Color(0xff1044fb),
                ),
              ),
            ),

            InkWell(
              //inkwell makes thes fields clickable
              onTap: () {},
              child: ListTile(
                title: Text('My Account'),
                leading: Icon(
                  Icons.person,
                   color: Color(0xff1044fb),
                ),
              ),
            ),

            InkWell(
              //inkwell makes thes fields clickable
              onTap: () {},
              child: ListTile(
                title: Text('Theme'),
                leading: Icon(
                  Icons.color_lens,
                    color: Color(0xff1044fb),
                ),
              ),
            ),

            Divider(),
            InkWell(
              //inkwell makes thes fields clickable
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,color: Colors.blue,
                ),
              ),
            ),

            InkWell(
              //inkwell makes thes fields clickable
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(Icons.help,color: Colors.green,),
              ),
            ),
          ],
        ),
      ),
      body: ListView(
        children: <Widget>[
          //image carousel
          image_carousel,
        Padding(padding: EdgeInsets.all(6),
          child: Text('Categories',
          style: TextStyle(
            //fontSize: 24,
            color: Color(0xff1044fb),
            fontFamily: 'kadwa',
            fontWeight: FontWeight.w400,

          ),),
        ),

          // Horizontal list begins here
          HorizontalList(),
          Padding(padding: EdgeInsets.only(left: 15,top: 5),
            child: Text('Recents',
              style: TextStyle(
                //fontSize: 24,
                color: Color(0xff1044fb),
                fontFamily: 'kadwa',
                fontWeight: FontWeight.w400,

              ),),
          ),


       Flexible(child: Services(),)
        ],
      ),
    );
  }
}
