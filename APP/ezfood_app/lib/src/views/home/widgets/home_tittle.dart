import 'package:flutter/material.dart';

import '../../../core/logic/logic.dart';
import '../../../styles/styles.dart';

class HomeTittle extends StatelessWidget {
  const HomeTittle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image(
            width: getWith(context) * 0.38,
            image: const AssetImage('assets/ez_logo_color.png'),
          ),
          SizedBox(
            height: 86.5,
            child: Row(
              children: [
                Text(
                  'EZ',
                  style: TextStyles().homeTittle,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(),
                    Text(
                      'Food',
                      style: TextStyles().homeSubTittle,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
