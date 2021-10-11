import 'package:flutter/material.dart';
import 'package:plant_shop_ui/homescreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 500,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                image: DecorationImage(
                    image: AssetImage('assets/welcome.jpg'),
                    fit: BoxFit.cover)),
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            'Welcome',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.w700),
          ),
          Text(
            'Landscaping your surroundings \nwith exotic plants',
            style: TextStyle(fontSize: 16, color: Colors.grey.shade400),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding: EdgeInsets.symmetric(horizontal: 60, vertical: 20),
                  primary: Color(0xff16182c)),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text(
                'Next',
                style: TextStyle(fontSize: 20),
              ))
        ],
      ),
    );
  }
}
