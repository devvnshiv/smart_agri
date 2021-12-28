import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartagriculture/screen/smart_switch.dart';
import 'package:smartagriculture/utils/Resposive.dart';



class Login_Page extends StatefulWidget {
  const Login_Page({Key? key}) : super(key: key);

  @override
  _Login_PageState createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 13*AppSizeConfig.heightMultiplier!,),
            Text("Wellcome  Back !!!",style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color:Colors.deepPurple, fontSize: 3.1*AppSizeConfig.textMultiplier!),),
            SizedBox(height: 2*AppSizeConfig.heightMultiplier!,),
            Center(
              child: Container(
                height: 50*AppSizeConfig.heightMultiplier!,
                width: 85*AppSizeConfig.widthMultiplier!,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white
                ),
                child: Column(
                  children: [
                    Text("Login",style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color:Colors.red, fontSize: 3.5*AppSizeConfig.textMultiplier!),),
                    SizedBox(height: 4*AppSizeConfig.heightMultiplier!,),
                    textfield( "  Email Id", ),
                    SizedBox(height: 4*AppSizeConfig.heightMultiplier!,),
                    textfield( "  Password ", ),
                    SizedBox(height: 4*AppSizeConfig.heightMultiplier!,),

                    SizedBox(height: 2*AppSizeConfig.heightMultiplier!,),
                    loginbutton()

                  ],
                ),

              ),
            ),
          ],
        ),
      ),
    );
  }

  textfield( String name, ){
    return Container(
      height: 5*AppSizeConfig.heightMultiplier!,
      width: 78*AppSizeConfig.widthMultiplier!,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey.shade500),
          borderRadius: BorderRadius.circular(6),
          color: Colors.white
      ),

      child: TextField(
        textAlign: TextAlign.start,
        decoration: InputDecoration(

            border: InputBorder.none,
            hintText: name

        ),
      ),
    );
  }


  loginbutton(){

    return GestureDetector(
        onTap: ()=>
            Navigator.push(context, MaterialPageRoute(builder: (_)=> SmartSwitch())),
        child:  Container(
          height: 5*AppSizeConfig.heightMultiplier!,
          width: 75*AppSizeConfig.widthMultiplier!,
          decoration: BoxDecoration(

              borderRadius: BorderRadius.circular(18),
              color: Colors.red
          ),
          child: Center(child: Text("Login",style: GoogleFonts.openSans(fontWeight: FontWeight.bold, color:Colors.white, fontSize: 2.4*AppSizeConfig.textMultiplier!),)),

        )
    );
  }


}
