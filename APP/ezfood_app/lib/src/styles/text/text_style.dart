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
  final cardText = const TextStyle(
    fontFamily: 'SourceSanspro',
    color: Palette.complementaryText,
    fontSize: 12,
  );
  final buttonText = const TextStyle(
    fontFamily: 'Montserrat',
    color: Palette.background,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );
  final appTittle = const TextStyle(
    fontFamily: 'Montserrat',
    color: Palette.background,
    fontSize: 48,
    fontWeight: FontWeight.bold,
  );
  final homeTittle = const TextStyle(
    fontFamily: 'Montserrat',
    color: Palette.complementaryText,
    fontSize: 80,
    fontWeight: FontWeight.bold,
  );
  final homeSubTittle = const TextStyle(
    fontFamily: 'Montserrat',
    color: Palette.complementaryText,
    fontSize: 36,
    fontWeight: FontWeight.bold,
  );

  final menuItemTittle = const TextStyle(
    fontFamily: 'Montserrat',
    color: Palette.complementaryText,
    fontSize: 16,
  );

  final menuPrice = const TextStyle(
    fontFamily: 'SourceSanspro',
    color: Palette.complementaryText,
    fontSize: 16,
    fontWeight: FontWeight.bold,
  );

  final snackText = const TextStyle(
    fontFamily: 'Montserrat',
    color: Colors.white,
    fontSize: 24,
  );

  final subTittle = const TextStyle(
    fontFamily: 'Montserrat',
    color: Palette.background,
    fontSize: 24,
    fontWeight: FontWeight.bold,
  );

  GradientText gradientText(
    String text,
  ) {
    return GradientText(
      text,
      gradient: const LinearGradient(
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
        colors: [
          Palette.primary,
          Palette.complementary,
        ],
      ),
      style: const TextStyle(
        fontFamily: 'Montserrat',
        fontSize: 48,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    required this.gradient,
    this.style,
  });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}
