import 'package:flutter/material.dart';

class SmartSwitch extends StatefulWidget {
  const SmartSwitch({Key? key}) : super(key: key);


  @override
  _SmartSwitchState createState() => _SmartSwitchState();
}

class _SmartSwitchState extends State<SmartSwitch> {
  int id =0;
  int pump =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text("Smart Agriculture",) ,
      ),
      body: Column(
        children: [
          SizedBox(height: 150,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Text("DHT!!", style: TextStyle(fontSize: 22),),
      id==0? Text("0",style: TextStyle(fontSize: 22),):Text("33",style: TextStyle(fontSize: 22),
      )],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Soil Moisture", style: TextStyle(fontSize: 22)),
             id==0? Text("0",style: TextStyle(fontSize: 22),):Text("245",style: TextStyle(fontSize: 22),
             )],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    if(pump==0){
                      pump=1;
                    }else{
                      pump=0;
                    }
                  });
                },
           child:   Text("Water pump",style: TextStyle(fontSize: 22))),
              pump==0? Text("off",style: TextStyle(fontSize: 22,color: Colors.green)):Text("On",style: TextStyle(fontSize: 22,color: Colors.red))
            ],
          ),
          SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){
                  setState(() {
                    if(id==0){
                      id=1;
                    }else{
                      id=0;
                    }
                  });
                },

                  child: Text("Led",style: TextStyle(fontSize: 22))),
             id==0? Text("off",style: TextStyle(fontSize: 22,color: Colors.green)):Text("On",style: TextStyle(fontSize: 22,color: Colors.red))
            ],
          )
        ],
      ),
    );
  }
}
