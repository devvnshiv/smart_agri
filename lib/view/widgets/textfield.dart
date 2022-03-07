import 'package:flutter/material.dart';

import 'package:form_validator/form_validator.dart';

import 'Resposive.dart';


class TextFields extends StatelessWidget {
  final String?  hint;
  final bool?   ofsure;
  final TextEditingController? controller;
  final IconData? icon;

  const TextFields({Key? key, this.hint, this.ofsure, this.controller, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5 * AppSizeConfig.heightMultiplier!,
     width: 80*AppSizeConfig.widthMultiplier!,
      child: TextFormField(

        validator: ValidationBuilder()
            .minLength(1)
            .build(),
        controller: controller,

        obscureText: ofsure!,


        onChanged: (value) {

        },
        decoration: InputDecoration(
            focusColor: Colors.grey,

            hintText: hint,
            icon: Icon(icon, color: Colors.black,),
            disabledBorder: InputBorder.none


        ),
      ),
    );
  }
}