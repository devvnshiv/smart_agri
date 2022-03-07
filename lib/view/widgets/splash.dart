
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartagricultures/view/dashboard/dashboard.dart';
import 'package:smartagricultures/view/login/loginscreen.dart';
import 'package:smartagricultures/view/widgets/Resposive.dart';
import 'package:smartagricultures/view/widgets/button.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    getperrence();
    super.initState();
  }

  getperrence() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var id = await prefs.getString('uid');
    Future.delayed(Duration(seconds: 3),(){



      if(id == null){
        Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginScreen()));

      }else {
        Navigator.push(context, MaterialPageRoute(builder: (_)=>DashBoard()));
      }

    });

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
      body: SingleChildScrollView(

          child: Container(
          height: 100*AppSizeConfig.heightMultiplier!,

decoration: BoxDecoration(
  image: DecorationImage(image:AssetImage(
    'assets/img_2.png',
  ), fit: BoxFit.cover)
),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,

              children: [
                SizedBox(height:25*AppSizeConfig.heightMultiplier! ,),

                Text("Welcome  !",style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold, fontSize: 35),),
SizedBox(height: 20,),
                Center(
                  child: Container(
                    height:200,
                    width: 200,
                    child: Image.asset("assets/img_1.png",fit:BoxFit.cover,),
                  ),
                ),
                SizedBox(height: 20,),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child:   Text("Smart Agriculture",style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold, fontSize: 25),),
              ),


              ],
            ),
          ),
        ),

    );
  }
}
