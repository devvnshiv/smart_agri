
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
Future<void> MsgAlert(BuildContext context, String title, String message) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return CupertinoAlertDialog(

        title:  Text(title),
        content: SingleChildScrollView(
          child: ListBody(
            children:  <Widget>[
              Text(message),
              //  Text('Would you like to approve of this message?'),
            ],
          ),
        ),

      );
    },
  );
}