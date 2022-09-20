

import 'package:barberapp/screens/home_screen.dart';
import 'package:barberapp/screens/login_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  checklogin()async{
  final  prefs = await SharedPreferences.getInstance();
        String checkvalue = prefs.get("loginstatus").toString();
        if(checkvalue == "login"){
          await Future.delayed(Duration(seconds: 3));
          Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
        }else if(checkvalue == "notlogin"){
          await Future.delayed(Duration(seconds: 3));
    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage())
    );
        }
        
  }

@override
  void initState() {
    // TODO: implement initState
    super.initState();
    checklogin();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: LinearProgressIndicator()));
  }
}