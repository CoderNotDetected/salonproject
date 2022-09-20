
import 'package:barberapp/screens/home_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';

 



class LoginPage extends StatefulWidget {
 
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final FirebaseAuth auth = FirebaseAuth.instance;

  Future signup(BuildContext context) async {
    final GoogleSignIn googleSignIn = GoogleSignIn();
    final GoogleSignInAccount? googleSignInAccount =
        await googleSignIn.signIn();
    if (googleSignInAccount != null) {
      final GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount.authentication;
      final AuthCredential authCredential = GoogleAuthProvider.credential(
          idToken: googleSignInAuthentication.idToken,
          accessToken: googleSignInAuthentication.accessToken);
      UserCredential result = await auth.signInWithCredential(authCredential);
      User? user = result.user;
      if (result != null) {
        final  prefs = await SharedPreferences.getInstance();
        prefs.setString("loginstatus", "login");
        
         Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
      }
    }
  }
  
  @override
  void initState() {
//checkIfLoggedIn();
    super.initState();
  }

  // checkIfLoggedIn()async{
  //       final  prefs = await SharedPreferences.getInstance();
  //     var token =  prefs.get("token");
  //     if (token != null) {
  //        Navigator.push(context, MaterialPageRoute(builder: (context) => HomeScreen()));
  //     }

  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueGrey,
        title: Text(
          'Hair Salon',
          ),
        ),
        body: Column(
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
              InkWell(
                onTap: () {
                 signup(context);
                },
                child: Image.asset(
                  "assets/google1.png",
                  height: 50,
                  width: 50,
                  ),
              ),
            // // //   // // Container(
            // // //   // //   padding: EdgeInsets.all(10),
            // // //   // //   child: TextField(
            // // //   // //     controller: nameController,
            // // //   // //     decoration: InputDecoration(
            // // //   // //       border: OutlineInputBorder(),
            // // //   // //       labelText: 'User Name / Email',
            // // //   // //     ),
            // // //   // //   ),
            // // //   // // ),
            // // //   // SizedBox(
            // // //   //   height: 5,
            // // //   // ),
            // // //   // Container(
            // // //   //   padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
            // // //   //   child: TextField(
            // // //   //     obscureText: true,
            // // //   //     controller: passwordController,
            // // //   //     decoration: InputDecoration(
            // // //   //       border: OutlineInputBorder(),
            // // //   //       labelText: 'Password',
            // // //   //     ),
            // // //   //   ),
            // // //   // ),
            // // //   SizedBox(
            // // //     height: 30,
            // // //   ),
            // // //  Container(
            // // //     height: 50,
            // // //     padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
            // // //     child: ElevatedButton(
            // // //       onPressed: (){
            // // //         print(nameController.text);
            // // //         print(passwordController.text);
            // // //          Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
            // // //       }, 
            // // //       child: Text('Log In'),),
            // // //   ),
            // //   Row(
            // //   children: <Widget>[
            // //     Text('Does not have a account ?'),
            // //     TextButton(
            // //       onPressed: (){
            // //        Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));
            // //       },
            // //       child: Text(
            // //         'Sign Up',
            // //         style: TextStyle(fontSize: 20),
            // //         ),
            // //       ),
            // //   ],
            // //   mainAxisAlignment: MainAxisAlignment.center,
            // // ),
            // TextButton(
            //   onPressed: (){}, 
            //   child: Text(
            //     'Forget Password',
            //     ),
            //   ),   
            ],
          ),
          ),
          ],
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
