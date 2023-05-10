import 'package:flutter/material.dart';

double getWith(BuildContext context) {
  return MediaQuery.of(context).size.width;
}

double getHeigth(BuildContext context) {
  return MediaQuery.of(context).size.height -
      MediaQuery.of(context).padding.top;
}

String format(double amount) {
  /* NumberFormat moneyFormatter = NumberFormat.currency(
      locale: 'es', // Establece la localización adecuada para el formato
      symbol: '\$', // Símbolo de la moneda (opcional)
    ); */

  /* String formattedAmount = moneyFormatter.format(amount); */
  return '';
}
