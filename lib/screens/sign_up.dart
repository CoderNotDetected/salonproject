import 'dart:ui';

import 'package:barberapp/screens/login_page.dart';
import 'package:flutter/material.dart';


class SignupPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Hair Salon",
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/salonP.png'),
            fit: BoxFit.contain,
            ),),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Sign Up",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue,
                            ),
                            ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            "Create an Account, Its free",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.blue,
                            ),
                            ),
                            SizedBox(
                              height: 30,
                            ),  
                        ],           
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 40,
                        ),
                        child: Column(
                          children: [
                            makeInput(label: "Email"),
                            makeInput(label: "Password",obscureText: true),
                            makeInput(label: "Confirm Pasword",obscureText: true)
                          ],
                        ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 40,
                          ),
                          child: Container(
                            padding: EdgeInsets.only(top: 3, left: 3),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              border: Border(
                                bottom: BorderSide(color: Colors.black),
                                top: BorderSide(color: Colors.black),
                                right: BorderSide(color: Colors.black),
                                left: BorderSide(color: Colors.black),
                              ),
                            ),
                            child: MaterialButton(
                              minWidth: double.infinity,
                              height: 60,
                              onPressed: (){},
                              color: Colors.deepPurpleAccent,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40),
                              ),
                              child: Text(
                                "Sign Up",
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 16,
                                ),
                                ),
                              ),
                          ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Already have a account?"),
                              TextButton(
                                onPressed: (){
                                   Navigator.pop(context, MaterialPageRoute(builder: (context) => LoginPage()));
                                }, 
                                child: Text(
                                  "Log In",
                                  style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18,
                                ),)),
                                
                                
                            ],
                          ),
                    ],
                  ),
                ],
              ),
            ),
          )),
      ),
    );
  }
}

Widget makeInput({label, obscureText = false}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(label, style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: Colors.black87,
      ),),
      SizedBox(
        height: 5,
      ),
      TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
        ),
      ),
      SizedBox(height: 30,),
    ],
  );
}