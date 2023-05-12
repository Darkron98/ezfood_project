import 'package:flutter/material.dart';

import '../../core/logic/logic.dart';
import '../../core/packages/packages.dart';
import '../../core/connection/connection.dart';
import '../../styles/styles.dart';
import '../shared/shared.dart';
import 'widgets/widgets_home.dart';

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
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    child: const HomeTittle(),
                  ),
                ),
                Container(
                  /* padding: EdgeInsets.only(
                    top: getHeigth(context) * 0.25,
                  ), */
                  height: getHeigth(context) * 0.8,
                  decoration: const BoxDecoration(),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SizedBox(),
                      SizedBox(
                        width: getWith(context) * 0.5,
                        height: getHeigth(context) * 0.3,
                        child: Wrap(
                          runSpacing: 20,
                          spacing: 20,
                          alignment: WrapAlignment.center,
                          children: const [
                            HomeItem(
                              label: 'Catalogo',
                              icon: Remix.pantone_line,
                              route: 'catalogo',
                            ),
                            HomeItem(
                              label: 'Comandas',
                              icon: Remix.list_check,
                              route: 'pedidos',
                            ),
                            HomeItem(
                              label: 'Personal',
                              icon: Remix.group_line,
                              route: 'personal',
                            ),
                          ],
                        ),
                      ),
                      BottomBar(
                        leftIcon: Remix.logout_circle_line,
                        rightIcon: Remix.settings_3_fill,
                        leftTap: () {
                          Navigator.of(context).pushNamed('/');
                        },
                        rightTap: () {},
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
