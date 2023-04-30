import 'package:flutter/material.dart';

double getWith(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double getHeigth(BuildContext context) {
  return MediaQuery.of(context).size.height -
      MediaQuery.of(context).padding.top;
}
