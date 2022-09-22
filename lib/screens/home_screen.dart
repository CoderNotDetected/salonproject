

import 'package:barberapp/screens/detail_screen.dart';
import 'package:barberapp/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

const stylistData = [
  {
    'stylistName': 'Johnson',
    'salonName': 'Swift Salon',
    'rating': '4.8',
    'rateAmount': '56',
    'imgUrl': 'assets/styleY.png',
    'phoneNumber': '7854691248',
    'bgColor': Colors.grey, 
  },
  {
     'stylistName': 'Max',
     'salonName': 'Max Salon',
     'rating': '4.7',
     'rateAmount': '58',
     'imgUrl': 'assets/styleZ.png',
     'phoneNumber': '8756941250',
     'bgColor': Colors.pink,
  },
  {
     'stylistName': 'Jeanne',
     'salonName': 'LifeStyle Beauty Salon',
     'rating': '4.9',
     'rateAmount': '61',
     'imgUrl': 'assets/styleW.png',
     'phoneNumber': '8837456947',
     'bgColor': Colors.red,  
  },
    {
     'stylistName': 'Lisa',
     'salonName': 'Beauty Salon',
     'rating': '4.9',
     'rateAmount': '61',
     'imgUrl': 'assets/styleS.png',
     'phoneNumber': '8837555214',
     'bgColor': Colors.orange,  
  },
    {
     'stylistName': 'Dean',
     'salonName': 'Asian Salon',
     'rating': '4.9',
     'rateAmount': '61',
     'imgUrl': 'assets/styleB.png',
     'phoneNumber': '8834581236',
     'bgColor': Colors.yellow,  
  },
];


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 241, 219, 250),
      body:  Column(
          children: [
            Expanded(
              flex: 3,
              child: SizedBox(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), 
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20,),
                //       Row(
                //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //       children: <Widget>[
                // //         IconButton(
                // //           onPressed: (){}, 
                // //           icon: const Icon(Icons.menu_rounded,
                // //           color: Colors.white,),
                // //           ),
                // // MaterialButton(
                // //       onPressed: ()async{
                // //         final prefs = await SharedPreferences.getInstance();
                // //         prefs.setString("loginstatus", "notlogin");
                // //         Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                // //       },
                // //       color: Color.fromARGB(255, 241, 219, 250),
                // //       shape: RoundedRectangleBorder(
                // //         borderRadius: BorderRadius.circular(30),
                // //       ),
                // //       child: Icon(Icons.logout)
                // // ),
                

                //       ],
                // ),
                 SizedBox(height: 10,),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Hair Salon', 
                                        style: TextStyle(fontWeight: FontWeight.bold, 
                                        fontSize: 24,
                                      ),
                                      ),
                                      InkWell(
                                        onTap: ()async{
                                            final prefs = await SharedPreferences.getInstance();
                                          prefs.setString("loginstatus", "notlogin");
                                          final GoogleSignIn googleSignIn = GoogleSignIn();
                                          googleSignIn.signOut();
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                                        },
                                        child: Icon(Icons.logout))
                                    ],
                                  ),

                    ],
                  ),    
                ),
              ),
            ),

          Expanded(
              flex:21,
              child: SizedBox(
                           child: ListView.builder(shrinkWrap: true,
                                  itemCount: stylistData.length,
                                    itemBuilder: (c,i){
                                    return StylistCard(stylistData[i]);
                                  }),
                         ),
                    
                
                 
               
              
            ),
           
          ],
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
      margin: EdgeInsets.symmetric(vertical: 10),
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
                color: Color.fromARGB(255, 133, 86, 150),
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