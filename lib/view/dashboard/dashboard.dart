import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartagricultures/view/cropdetection/cropdection.dart';
import 'package:smartagricultures/view/deasedetection/detection.dart';
import 'package:smartagricultures/view/login/loginscreen.dart';
import 'package:smartagricultures/view/widgets/preload.dart';


class DashBoard extends StatefulWidget {


  @override
  _DashBoardState createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade50,
    appBar: AppBar(
      backwardsCompatibility: false,
        elevation: 2,
backgroundColor: Colors.white,
centerTitle: true,
title:const Text("Smart Agriculture", style: TextStyle(color: Colors.indigo),),

      actions: [
        IconButton(onPressed: () async{
          final prefs = await SharedPreferences.getInstance();
          prefs.remove('uid');
          showMyDialog(context);
          Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginScreen()));
        }, icon:Icon( Icons.logout, color: Colors.black,))
      ],



      ),
      body:

     Container(
          decoration: BoxDecoration(
              image: DecorationImage(image:AssetImage(
                'assets/img_2.png',
              ), fit: BoxFit.cover)
          ),

          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                     GestureDetector(
                        onTap: (){
                         Navigator.push(context, MaterialPageRoute(builder: (_)=>CropDection()));
                        },
                        child: Card(
                          elevation: 5,
                          child: Container(
                            height: 100,
                            width: 160,
                            child: Center(child: Text("Crop Detection", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Colors.indigo),)) ,
                          ),
                        ),
                      ),

                    GestureDetector(

                      onTap: () async{

                   Navigator.push(context, MaterialPageRoute(builder: (_)=>Dection()));


                      },
                      child: Card(
                        elevation: 5,
                        child:
                        Container(

                          height: 100,

                          width: 160,
                          child: const Center(child: Text("Disease Detection", style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Colors.indigo),)) ,
                        ),
                      ),
                    ),



                  ],
                ),
              ),




            ],
          ),
        ),


    );
  }
}
