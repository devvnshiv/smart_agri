
import 'package:flutter/material.dart';


Future<void> showMyDialog( BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierColor: Colors.black12,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return Center(
        child: Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
                color: Colors.black54,

          ),
          child: Center(child: CircularProgressIndicator(color: Colors.white,strokeWidth: 3.0,)),
        ),
      );
    },
  );
}