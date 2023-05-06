import 'package:flutter/material.dart';

import '../../../core/packages/packages.dart';
import '../../../styles/styles.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20, left: 50, right: 50),
      child: Container(
        height: 60,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
                color: Palette.complementaryText,
                blurRadius: 7,
                spreadRadius: 1,
                offset: Offset(0, 4))
          ],
          color: Palette.background,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () => Navigator.of(context).pushNamed('/'),
              child: const Icon(
                Remix.logout_circle_line,
                size: 30,
                color: Palette.complementaryText,
              ),
            ),
            const SizedBox(
              height: 45,
              child: VerticalDivider(
                color: Palette.complementaryText,
              ),
            ),
            const Icon(
              Remix.settings_3_fill,
              size: 30,
              color: Palette.complementaryText,
            ),
          ],
        ),
      ),
    );
  }
}
