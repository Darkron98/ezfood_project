import 'package:flutter/material.dart';

import '../../../styles/styles.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({
    super.key,
    required this.route,
    required this.label,
    required this.icon,
  });

  final String route;
  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(route),
      child: SizedBox(
        width: 80,
        height: 100,
        child: Column(
          children: [
            Icon(
              icon,
              size: 60,
              color: Palette.background,
            ),
            Text(
              label,
              style: TextStyles().buttonText,
            ),
          ],
        ),
      ),
    );
  }
}
