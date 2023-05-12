import 'package:flutter/material.dart';
import 'package:money_formatter/money_formatter.dart';

double getWith(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double getHeigth(BuildContext context) {
  return MediaQuery.of(context).size.height -
      MediaQuery.of(context).padding.top;
}

String moneyFormat(double amount) {
  MoneyFormatter mf = MoneyFormatter(amount: amount);
  return mf.output.symbolOnLeft;
}
