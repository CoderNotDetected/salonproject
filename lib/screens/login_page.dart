import 'package:barberapp/screens/home_screen.dart';
import 'package:flutter/material.dart';
 

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  static const String _title = 'Hair Salon';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: ListView(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10), 
          child: Text(
            'Hair Salon',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w500,
              fontSize: 30,
            ),
            ),
        ),
        Container(
          alignment: Alignment.center,
          padding: EdgeInsets.all(10),
          child: Text(
            'Sign In',
            style: TextStyle(fontSize: 20),
            ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: TextField(
            controller: nameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'User Name',
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          child: TextField(
            obscureText: true,
            controller: passwordController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
            ),
          ),
        ),
       TextButton(
        onPressed: (){}, 
        child: Text(
          'Forget Password',
          ),
        ),
        Container(
          height: 50,
          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: ElevatedButton(
            onPressed: (){
              print(nameController.text);
              print(passwordController.text);
               Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
            }, 
            child: Text('Log In'),),
        ),
      Row(
        children: <Widget>[
          Text('Does not have a account ?'),
          TextButton(
            onPressed: (){
             
            },
            child: Text(
              'Sign Up',
              style: TextStyle(fontSize: 20),
              ),
            ),
        ],
        mainAxisAlignment: MainAxisAlignment.center,
      ),   
      ],
    ),
    );
  }
}