import 'package:ezfood_app/src/styles/color/pallete.dart';
import 'package:ezfood_app/src/styles/styles.dart';
import 'package:flutter/material.dart';

import '../../../core/packages/packages.dart';

void customSnackbar(BuildContext context, {String? message, Color? color}) {
  final snackbar = SnackBar(
    elevation: 0,
    backgroundColor: Colors.transparent,
    padding: const EdgeInsets.only(),
    content: Container(
      padding: const EdgeInsets.only(left: 20, right: 20),
      height: 60,
      decoration: BoxDecoration(
        color: color ?? Palette.complementary,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              message ?? 'Hola! :D',
              style: TextStyles().snackText,
            ),
            const Icon(
              Remix.checkbox_circle_fill,
              color: Palette.background,
              size: 40,
            ),
          ],
        ),
      ),
    ),
    duration: const Duration(
        seconds: 3), // Duración en segundos que se mostrará el Snackbar
  );

  ScaffoldMessenger.of(context).showSnackBar(snackbar);
}
