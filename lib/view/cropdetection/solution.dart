import 'package:flutter/material.dart';

class Soulution extends StatefulWidget {
 final String? dname;
 final String?  sol;


  const Soulution({Key? key, this.dname, this.sol}) : super(key: key);

  @override
  _SoulutionState createState() => _SoulutionState();
}

class _SoulutionState extends State<Soulution> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            SizedBox(height: 40,),
        Text("Diseases name  : "+widget.dname.toString(), style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Colors.black),),
            SizedBox(height: 40,),
            Text("Solution  : "+widget.sol.toString(), style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Colors.black),),
          ],
        ),
      ),
    );
  }
}
