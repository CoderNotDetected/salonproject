import 'package:barberapp/screens/detail_screen.dart';
import 'package:flutter/material.dart';

class BookedPage extends StatefulWidget {
  const BookedPage({Key? key}) : super(key: key);

  @override
  State<BookedPage> createState() => _BookedPageState();
}

class _BookedPageState extends State<BookedPage> {

  TextEditingController nameController = TextEditingController();
  TextEditingController timeController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          "Hair Salon"
          ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Name',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: timeController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Time',
                ),
              ),
            ),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pop(context, MaterialPageRoute(builder: (context) => DetailScreen(context)));
                }, 
                child: Text("Book")),
            ),
          ],
        ),
        ),
    );
  }
}