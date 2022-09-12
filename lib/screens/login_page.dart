import 'package:barberapp/screens/home_screen.dart';
import 'package:barberapp/screens/sign_up.dart';
import 'package:flutter/material.dart';
 



class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          'Hair Salon',
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 300,
                child: Image.asset("assets/salonQ.png")),
                Padding(
              padding: EdgeInsets.all(10),
              child: ListView(
                shrinkWrap: true,
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
                SizedBox(
                  height: 5,
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
                SizedBox(
                  height: 30,
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
                     Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
                    },
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 20),
                      ),
                    ),
                ],
                mainAxisAlignment: MainAxisAlignment.center,
              ),
              TextButton(
                onPressed: (){}, 
                child: Text(
                  'Forget Password',
                  ),
                ),   
              ],
            ),
            ),
            ],
          ),
        ),
      // body: Opacity(
      //   opacity: .6,
      //   child: Container(
      //     decoration: BoxDecoration(
      //       image: DecorationImage(
      //         image: AssetImage('assets/salonQ.png'),
      //         fit: BoxFit.contain,
      //       ),
      //     ),
      //     child:
      // Padding(
      //       padding: EdgeInsets.all(10),
      //       child: ListView(
      //       children: <Widget>[
      //         Container(
      //           alignment: Alignment.center,
      //           padding: EdgeInsets.all(10), 
      //           child: Text(
      //             'Hair Salon',
      //             style: TextStyle(
      //               color: Colors.blue,
      //               fontWeight: FontWeight.w500,
      //               fontSize: 30,
      //             ),
      //             ),
      //         ),
      //         Container(
      //           alignment: Alignment.center,
      //           padding: EdgeInsets.all(10),
      //           child: Text(
      //             'Sign In',
      //             style: TextStyle(fontSize: 20),
      //             ),
      //         ),
      //         Container(
      //           padding: EdgeInsets.all(10),
      //           child: TextField(
      //             controller: nameController,
      //             decoration: InputDecoration(
      //               border: OutlineInputBorder(),
      //               labelText: 'User Name',
      //             ),
      //           ),
      //         ),
      //         Container(
      //           padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
      //           child: TextField(
      //             obscureText: true,
      //             controller: passwordController,
      //             decoration: InputDecoration(
      //               border: OutlineInputBorder(),
      //               labelText: 'Password',
      //             ),
      //           ),
      //         ),
      //        TextButton(
      //         onPressed: (){}, 
      //         child: Text(
      //           'Forget Password',
      //           ),
      //         ),
      //         Container(
      //           height: 50,
      //           padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
      //           child: ElevatedButton(
      //             onPressed: (){
      //               print(nameController.text);
      //               print(passwordController.text);
      //                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
      //             }, 
      //             child: Text('Log In'),),
      //         ),
      //       Row(
      //         children: <Widget>[
      //           Text('Does not have a account ?'),
      //           TextButton(
      //             onPressed: (){
      //              Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
      //             },
      //             child: Text(
      //               'Sign Up',
      //               style: TextStyle(fontSize: 20),
      //               ),
      //             ),
      //         ],
      //         mainAxisAlignment: MainAxisAlignment.center,
      //       ),   
      //       ],
      //     ),
      //     ),
      //   ),
      // ),
    );
  }
}