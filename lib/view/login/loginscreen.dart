import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';


import 'package:google_fonts/google_fonts.dart';
import 'package:smartagricultures/view/data/loginrepo.dart';
import 'package:smartagricultures/view/signup/signup.dart';
import 'package:smartagricultures/view/widgets/Resposive.dart';
import 'package:smartagricultures/view/widgets/button.dart';
import 'package:smartagricultures/view/widgets/preload.dart';
import 'package:smartagricultures/view/widgets/textfield.dart';




class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  TextEditingController  email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> key = GlobalKey();
  bool isVisiable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SingleChildScrollView(child: Form(
          key: key,
          child: body(context))),
    );
  }



  Widget body(BuildContext context){
    return Column(
      children: [
        SizedBox(height: 10*AppSizeConfig.heightMultiplier!,),
        Text("Welcome !!", style: GoogleFonts.poppins(fontSize: 25, color: Colors.white,fontWeight: FontWeight.bold),),
        SizedBox(height: 5*AppSizeConfig.heightMultiplier!,),

        Container(

          height: 80*AppSizeConfig.heightMultiplier!,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(topRight: Radius.circular(25),topLeft:  Radius.circular(25)),

          ),
          child: Column(
            children: [
              SizedBox(height: 10*AppSizeConfig.heightMultiplier!,),
              Text("Login", style: GoogleFonts.poppins(fontSize: 25, color: Colors.black,fontWeight: FontWeight.bold),),
              SizedBox(height: 10*AppSizeConfig.heightMultiplier!,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    TextFields(hint: "Email",ofsure:  false,controller: email,icon: Icons.email_outlined,),
                    Container(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: [
                    TextFields(hint: "Password",ofsure:  isVisiable,controller: password,icon: Icons.password,),
                    IconButton(onPressed: (){
                      if(isVisiable){
                        setState(() {
                          isVisiable= false;
                        });
                      } else {
                        setState(() {
                          isVisiable= true;
                        });
                      }



                    }, icon:isVisiable? Icon(Icons.visibility_outlined):Icon(Icons.visibility_off_outlined))
                  ],
                ),
              ),

              GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>SignUp()));
                  },


                  child: Text("Not registered yet? SignUp",style: GoogleFonts.roboto(fontSize: 20, color: Colors.indigo, fontWeight: FontWeight.bold),)),

              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ButtonCircular(text: "Login",onTap:() async{

                  if(key.currentState!.validate()) {
                    showMyDialog(context);
                    Auth().Signin(email.text, password.text, context);

                  }

                },),
              )
            ],
          ),
        ),
      ],
    );

  }





}
