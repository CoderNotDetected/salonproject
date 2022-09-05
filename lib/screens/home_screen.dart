import 'dart:ui';

import 'package:barberapp/screens/detail_screen.dart';
import 'package:barberapp/screens/login_page.dart';
import 'package:flutter/material.dart';

const stylistData = [
  {
    'stylistName': 'Johnson',
    'salonName': 'Swift Salon',
    'rating': '4.8',
    'rateAmount': '56',
    'imgUrl': 'assets/style4.jpg',
    'phoneNumber': '7854691248',
    'bgColor': Colors.grey, 
  },
  {
     'stylistName': 'Max',
     'salonName': 'Max Salon',
     'rating': '4.7',
     'rateAmount': '58',
     'imgUrl': 'assets/style5.jpg',
     'phoneNumber': '8756941250',
     'bgColor': Colors.pink,
  },
  {
     'stylistName': 'Jeanne',
     'salonName': 'LifeStyle Beauty Salon',
     'rating': '4.7',
     'rateAmount': '61',
     'imgUrl': 'assets/style6.jpg',
     'phoneNumber': '8837456947',
     'bgColor': Colors.red,  
  },
];


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff4E295B),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  onPressed: (){
                    //Navigator.pop(context, MaterialPageRoute(builder: (context) => LoginPage()));
                  }, 
                  icon: Icon(Icons.menu_rounded,
                  color: Colors.white,),
                  ),
            MaterialButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
              },
              color: Color(0xffFF8573),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text( 
                'Log Out', 
                style: TextStyle(
                  color: Colors.white,
                ),
                ),
            ), 
              ],
            ),    
            ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(50),
              ),
            ),
            child: Padding(padding: EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(height: 50,),
                Text(
                  'Hair Salon', 
                  style: TextStyle(fontWeight: FontWeight.bold, 
                  fontSize: 24,
                ),
                ),
                StylistCard(stylistData[0]),
                StylistCard(stylistData[1]),
                StylistCard(stylistData[2]), 
              ],
            ),
            ),
          ),  
          ],
        ),
      ),
    );
  }
}

class StylistCard extends StatelessWidget {
  
  final stylist;
  StylistCard(this.stylist);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height / 4 -20,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: stylist['bgColor'],
      ),
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 20,
            right: -0.40,
            child: Image.asset(stylist['imgUrl'], 
            width: MediaQuery.of(context).size.width * 0.30,
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 40, left: 30,),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                stylist['stylistName'], 
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),),
              SizedBox(
                  height: 5,
                ),
                Text(stylist['salonName'],
                style: TextStyle(
                  fontWeight: FontWeight.w300,
                ),
                ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.star, 
                    size: 16,
                    color: Colors.black,
                    ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(stylist['rating'],
                  style: TextStyle(
                    color: Color(0xff4E295B),
                  ),
                  ),   
                ],
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(stylist)));
                },
                color: Color(0xff4E295B),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'View Profile',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  ),
                )  
            ],
          ),
          ),
        ],
      ),
    );
  }
}