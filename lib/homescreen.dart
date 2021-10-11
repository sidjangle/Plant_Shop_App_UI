import 'package:flutter/material.dart';
import 'package:plant_shop_ui/ProductCard.dart';
import 'package:plant_shop_ui/menucard.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        shadowColor: Colors.transparent,
        toolbarHeight: 100,
        leadingWidth: 0,
        centerTitle: false,
        title: ListTile(
          title: Text(
            'Green',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
          subtitle: Text('all space around you'),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_bag_outlined),
            color: Colors.black,
            iconSize: 40,
          )
        ],
      ),
      body: Row(
        children: [
          // menu card
          Container(
            width: 100,
            height: MediaQuery.of(context).size.height - 162.2,
            decoration: BoxDecoration(
                color: Color(0xfff6f4ff),
                borderRadius: BorderRadius.only(topRight: Radius.circular(40))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MenuCard(
                  icondata: Icon(Icons.spa),
                  text: 'indoor',
                ),
                MenuCard(
                  icondata: Icon(Icons.grass),
                  text: 'outdoor',
                ),
                MenuCard(
                  icondata: Icon(Icons.park),
                  text: 'garden',
                ),
                MenuCard(
                  icondata: Icon(Icons.apartment),
                  text: 'office',
                )
              ],
            ),
          )

          // Product Card
          ,
          Container(
            height: 600,
            width: MediaQuery.of(context).size.width - 100,
            child: ListView.builder(
                itemCount: 3,
                itemBuilder: (context, index) {
                  return ProductCard();
                }),
          )
        ],
      ),
    );
  }
}
