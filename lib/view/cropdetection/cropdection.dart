import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

 class CropDection extends StatefulWidget {
   const CropDection({Key? key}) : super(key: key);

   @override
   _CropDectionState createState() => _CropDectionState();
 }

 class _CropDectionState extends State<CropDection> {
   int value =0;
   String name = '';
   Timer? timer;
   @override
  void initState() {
     getvalue();
    super.initState();
  }


   
   getvalue(){
     timer= Timer.periodic(Duration(seconds: 16), (timer) {
       Random random =  Random();
       int randomNumber = random.nextInt(100);
       print(randomNumber);
       if(randomNumber <=10 && randomNumber>0){
         setState(() {
           value=randomNumber;
           name = ' Sun Flower';
         });
       } else if (randomNumber <=20 && randomNumber>=10){
         setState(() {
           value=randomNumber;
           name = ' Ragi';
         });
       }else if (randomNumber <=30 && randomNumber>=20) {
         setState(() {
           value = randomNumber;
           name = 'soyaBean';
         });
       }else if (randomNumber <=40 && randomNumber>=30) {
         setState(() {
           value = randomNumber;
           name = 'BlackGram';
         });
       }else if (randomNumber <=50 && randomNumber>=40) {
         setState(() {
           value = randomNumber;
           name = 'GreenGram';
         });
       }else if (randomNumber <=60 && randomNumber>=50) {
         setState(() {
           value = randomNumber;
           name = 'Cotton';
         });
       }else if (randomNumber <=70 && randomNumber>=60) {
         setState(() {
           value = randomNumber;
           name = 'Rice';
         });
       } else {
         setState(() {
           value = randomNumber;
           name = 'Sugar cane';
         });
       }
     });

   }

   @override
  void dispose() {
   timer!.cancel();
    super.dispose();
  }
   
   @override
   Widget build(BuildContext context) {
     return Scaffold(
       appBar: AppBar(
         centerTitle: true,
         backgroundColor: Colors.white,
         title: Text("Crop Detection", style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold, color: Colors.indigo),),
       ),
       body: Column(
         children: [
           SizedBox(height: 50,),
           Center(child: Text("Value: "+value.toString(), style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Colors.indigo),)),
           SizedBox(height: 50,),
           Center(child: Text("Crop: "+name.toString(), style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Colors.indigo),))
         ],
       ),
     );
   }
 }
