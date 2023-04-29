import 'package:flutter/material.dart';
import '../styles.dart';

class TextStyles {
  final mainTittle = const TextStyle(
    fontFamily: 'Montserrat',
    color: Palette.background,
    fontSize: 32,
    fontWeight: FontWeight.bold,
  );
  final formText = const TextStyle(
    fontFamily: 'SourceSanspro',
    color: Palette.complementaryText,
    fontSize: 16,
  );
  final buttonText = const TextStyle(
    fontFamily: 'Montserrat',
    color: Colors.white,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
}
