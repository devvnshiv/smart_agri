import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smartagricultures/view/login/loginscreen.dart';

import 'package:smartagricultures/view/widgets/alertdilog.dart';
import 'package:smartagricultures/view/widgets/messagealert.dart';

import 'package:supabase_flutter/supabase_flutter.dart';

class Userdata{


  SetUser( String name, String email, BuildContext  context, String uid) async{
    final res = await Supabase.instance.client
        .from('Users')
        .insert([
      {'name': name, 'email':email, 'uid':uid}
    ]).execute();
    if(res.hasError){
      Navigator.pop(context);
      AlertDialogs(context, " Error", res.error!.message);
    } else {
      Navigator.pop(context);
      MsgAlert(context ,"Alert" , "SignUp SuccessFully");
      Future.delayed(Duration(seconds: 2),(){
      Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginScreen()));


      });}
  }

}