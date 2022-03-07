import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:smartagricultures/view/dashboard/dashboard.dart';
import 'package:smartagricultures/view/data/userrepo.dart';
import 'package:smartagricultures/view/widgets/alertdilog.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class Auth{


  Signup( String email, String paswword, BuildContext context, String name) async{
    final prefs = await SharedPreferences.getInstance();
    final res = await   Supabase.instance.client.auth.signUp(email,paswword,);

    final user = res.data?.user;
    final error = res.error;
Navigator.pop(context);
if(error!=null){
  Navigator.pop(context);
  AlertDialogs(context, " Error", res.error!.message);
} else {
  await prefs.setString('uid', res.user!.id);
  Userdata().SetUser(name, email, context, res.user!.id);
}
}



  Signin(String email, String pasword, BuildContext context) async{
    final prefs = await SharedPreferences.getInstance();
    final res = await  Supabase.instance.client.auth.signIn(email: email,password: pasword);
    final error = res.error;
  if(error!= null){
    Navigator.pop(context);
    AlertDialogs(context, " Error", res.error!.message);
  }else {
    await prefs.setString('uid', res.user!.id);
    Navigator.pop(context);
    Navigator.push(context, MaterialPageRoute(builder: (_)=>DashBoard()));
  }
  }





}