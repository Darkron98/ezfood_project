import 'package:flutter/material.dart';

import '../../core/logic/logic.dart';
import '../../core/packages/packages.dart';
import '../../styles/styles.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.topRight,
            colors: [
              Palette.primary,
              Palette.complementary,
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  width: double.infinity,
                  height: getHeigth(context) * 0.2,
                  padding: const EdgeInsets.only(right: 18, bottom: 9),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomLeft,
                      end: Alignment.topRight,
                      colors: [
                        Palette.primary,
                        Palette.complementary,
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(60),
                    ),
                  ),
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Palette.background,
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(50),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Image(
                            width: getWith(context) * 0.38,
                            image: AssetImage('assets/ez_logo_color.png'),
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
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
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: getHeigth(context) * 0.3,
                  ),
                  width: getWith(context) * 0.5,
                  height: getHeigth(context) * 0.8,
                  decoration: const BoxDecoration(),
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: [
                      GestureDetector(
                        onTap: () =>
                            Navigator.of(context).pushNamed('catalogo'),
                        child: SizedBox(
                          width: 80,
                          height: 100,
                          child: Column(
                            children: [
                              const Icon(
                                Remix.pantone_line,
                                size: 70,
                                color: Palette.background,
                              ),
                              Text(
                                'Catalogo',
                                style: TextStyles().buttonText,
                              ),
                            ],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context).pushNamed('Pedidos'),
                        child: SizedBox(
                          width: 70,
                          height: 100,
                          child: Column(
                            children: [
                              const Icon(
                                Remix.list_check,
                                size: 70,
                                color: Palette.background,
                              ),
                              Text(
                                'Pedidos',
                                style: TextStyles().buttonText,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
