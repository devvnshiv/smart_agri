import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartagriculture/screen/login/login.dart';
class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(Duration(
      seconds: 2,

    ),
            () {
          Navigator.push(context, MaterialPageRoute(builder: (_)=>Login_Page ()));



        });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:


 Column(
   mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.center,
  children: [
    Center(child: Image.asset("assets/img_1.png",height: 200,)),
    Text("Smart Agriculture", style: TextStyle(color: Colors.red,fontSize: 30, fontWeight: FontWeight.bold),)
  ],
 ));


  }
}
