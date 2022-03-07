import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class ButtonCircular extends StatelessWidget {
  final String? text;
  final VoidCallback?  onTap;

  const ButtonCircular({Key? key, this.text, this.onTap}) : super(key: key);
 

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap!,
      child: Container(
        height: 60,
        
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
              color: Colors.indigo,
        ),
        child:   Center(child: Text(text!, style: GoogleFonts.poppins(fontSize: 20, color: Colors.white,fontWeight: FontWeight.bold),)),
      ),
    );
  }
}
