import 'package:ezfood_app/src/styles/color/pallete.dart';
import 'package:ezfood_app/src/styles/styles.dart';
import 'package:flutter/material.dart';

import '../../../core/packages/packages.dart';

void customSnackbar(BuildContext context,{String? message, Color? color}) {
    final snackbar = SnackBar(
      elevation: 0,
      backgroundColor: Colors.transparent,
      padding: EdgeInsets.only(bottom: 95,left: 20,right: 20),
      content: Container(
        padding: EdgeInsets.only(left: 15,right: 15),
        height: 60,
        decoration: BoxDecoration(
          color: color ?? Palette.complementary,
          borderRadius: BorderRadius.circular(10),
          ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(message?? 'Hola! :D',style: TextStyles().snackText,),
              Icon(Remix.checkbox_circle_fill,color: Palette.background,size: 40,),
            ],
          ),
        ),),
      duration: Duration(seconds: 3), // Duración en segundos que se mostrará el Snackbar
    );

    ScaffoldMessenger.of(context).showSnackBar(snackbar);
  }
