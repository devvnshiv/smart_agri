import 'package:flutter/material.dart';



import 'package:google_fonts/google_fonts.dart';
import 'package:smartagricultures/view/data/loginrepo.dart';
import 'package:smartagricultures/view/login/loginscreen.dart';
import 'package:smartagricultures/view/widgets/Resposive.dart';
import 'package:smartagricultures/view/widgets/button.dart';
import 'package:smartagricultures/view/widgets/preload.dart';
import 'package:smartagricultures/view/widgets/textfield.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController  email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController name = TextEditingController();
  GlobalKey<FormState> key = GlobalKey();
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
              Text("SignUp", style: GoogleFonts.poppins(fontSize: 25, color: Colors.black,fontWeight: FontWeight.bold),),
              SizedBox(height: 10*AppSizeConfig.heightMultiplier!,),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFields(hint: "Email",ofsure:  false,controller: email,icon: Icons.email_outlined,),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFields(hint: "Name",ofsure:  false,controller: name,icon: Icons.supervised_user_circle_outlined,),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: TextFields(hint: "Password",ofsure:  true,controller: password,icon: Icons.password,),
              ),
              Center(child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>LoginScreen()));
                  },


                  child: Text("Already registered yet? Login",style: GoogleFonts.roboto(fontSize: 20, color: Colors.indigo, fontWeight: FontWeight.bold),))),


              Padding(
                padding: const EdgeInsets.all(20.0),
                child: ButtonCircular(text: "SignUp",onTap:(){
                  print("hello");
                  if(key.currentState!.validate()){
                    showMyDialog(context);
                    Auth().Signup(email.text, password.text,context, name.text);
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