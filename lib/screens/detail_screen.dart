import 'package:barberapp/screens/book_page.dart';
import 'package:flutter/material.dart';

var serviceList = [
  {'title': 'Men\s Hair Cut', 'duration': 45, 'price': 30},
  {'title': 'Women\s Hair Cut', 'duration': 60, 'price': 50},
  {'title': 'Color & Blow Dry', 'duration': 90, 'price': 75},
  {'title': 'Oil Treatment', 'duration': 30, 'price': 80},
];

class DetailScreen extends StatefulWidget {
  
  final stylist;
  DetailScreen(this.stylist);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {


  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height / 3+20,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Image.asset(
                      'assets/shop1.jpg',
                    fit: BoxFit.fill,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      color: Colors.purple.withOpacity(0.1),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 50,
                left: 20,
                child: IconButton(
                  onPressed: (){
                    Navigator.pop(context);
                  }, 
                icon: Icon(Icons.arrow_back_ios,
                color: Colors.white,
                ),
                ),
                ),
              Positioned(
                top: MediaQuery.of(context).size.height / 3 - 60,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                    ),
                  ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 100,
                      ),
                     Text(
                      'Service List',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                     ),
                     SizedBox(
                      height: 30,
                     ),
                     ServiceTile(serviceList[0]),
                     ServiceTile(serviceList[1]),
                     ServiceTile(serviceList[2]), 
                     ServiceTile(serviceList[3]),
                     ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        padding: EdgeInsets.all(20),
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height / 8,
                        color: Color(0xff4E285B),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  'Angel Howard',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  'Mar 9, 2020',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w300,
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                Icon(
                                      Icons.star,
                                      color: Color(0xffFF8573),
                                      size: 16,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color(0xffFF8573),
                                      size: 16,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color(0xffFF8573),
                                      size: 16,
                                    ),
                                    SizedBox(
                                      width: 4,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color(0xffFF8573),
                                      size: 16,
                                    ),
                                    SizedBox(
                                      width: 3,
                                    ),
                                    Icon(
                                      Icons.star,
                                      color: Color(0xffFF8573),
                                      size: 16,
                                    ),
                              ],
                            ),
                           Text('Got to be one of the best place to get a haircut.',
                           style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                           ),
                           ), 
                          ],
                        ),
                      ),
                     ),
                    ],
                  ),
                  ),  
                ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / 3-120,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width / 3 - 20,
                          height: MediaQuery.of(context).size.height / 6 + 10,
                          decoration: BoxDecoration(
                            color: widget.stylist['bgColor'],
                            borderRadius: BorderRadius.circular(10),
                          ),
                         child: Stack(
                          fit: StackFit.expand,
                          children: <Widget>[
                            Positioned(
                              top: 10,
                              right: -0.9,
                              child: Image.asset(widget.stylist['imgUrl'],
                              scale: 5.3,
                              ),
                              ),
                          ],
                         ), 
                        ),
                      SizedBox(
                        width: 20,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            widget.stylist[
                              'stylistName'],
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                              ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        widget.stylist['salonName'],
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(widget.stylist[
                        'phoneNumber'],
                        style: TextStyle(fontWeight: FontWeight.w300,
                        color: Colors.grey,),
                        ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            size: 16,
                            color: Colors.orange,
                          ),
                      SizedBox(
                        width: 5,  
                      ),
                      Text(
                        widget.stylist['rating'],
                        style: TextStyle(
                          color: Color(0xffFF8573),
                        ),
                        ),
                       SizedBox(
                        width: 5,
                       ),
                        Text(
                          '(${widget.stylist['rateAmount']})',
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),    
                        ],
                      ),        
                      ],
                      )  
                      ],
                    ),
                    ),
                    ),
                  Positioned(
                    right: 10,
                    top: MediaQuery.of(context).size.height / 3 - 50,
                    child: MaterialButton(
                      onPressed: (){
                       setState(() {
                         isLiked = !isLiked;
                        
                       });
                      },
                      padding: EdgeInsets.all(10),
                      shape: CircleBorder(),
                      color: Colors.white,
                      child: Icon(Icons.favorite_border,color: isLiked ? Colors.red : Colors.grey,),
                      ),),    
            ],
          ),
        ),
      ),
    );
  }
}

class ServiceTile extends StatefulWidget {
 
 final service;
 ServiceTile(this.service);

  @override
  State<ServiceTile> createState() => _ServiceTileState();
}

class _ServiceTileState extends State<ServiceTile> {
  bool buttonclick = false;
  Color buttonclickcolor = Color(0xffFF8573);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width / 2 - 40,
                child: Text(
                  widget.service['title'],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '${widget.service['duration']} Min',
                style: TextStyle(
                  color: Colors.grey,
                ),
                ),
            ],
          ),
          Text(
            '₹${widget.service['price']}',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
            ),
            MaterialButton(
              onPressed: (){
                setState(() {
                  buttonclick = true;
                  buttonclickcolor = Colors.green;
                  });
                  showDatePicker(context: context, initialDate: DateTime.now(), firstDate: DateTime(2015, 8), lastDate: DateTime(2101));
                  showTimePicker(context: context, initialTime: TimeOfDay.now());
              },
              color: buttonclickcolor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Text(buttonclick? 
                'Booked':'Book', 
                style: TextStyle(
                  color: Colors.white,
                ),
                ),
            ),
        ],
      ),
    ); 
  }
}