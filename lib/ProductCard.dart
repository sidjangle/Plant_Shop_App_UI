import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - 100,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 200,
            height: 300,
            // color: Colors.grey.shade400,
          ),
          Positioned(
            top: 40,
            child: Container(
              width: 200,
              height: 230,
              decoration: BoxDecoration(
                  color: Color(0xffcbf2d3),
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
          Positioned(
            top: 0,
            child: Image.asset(
              'assets/1.png',
              width: 250,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                  color: Color(0xff16182c),
                  borderRadius: BorderRadius.circular(20)),
              child: Icon(Icons.shopping_bag_outlined, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
