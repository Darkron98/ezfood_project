import 'package:card_swiper/card_swiper.dart';
import 'package:ezfood_app/src/core/logic/logic.dart';

import 'package:flutter/material.dart';

import '../../core/packages/packages.dart';
import '../../styles/styles.dart';
import '../shared/shared.dart';

class Personal extends StatelessWidget {
  const Personal({super.key});

  @override
  Widget build(BuildContext context) {
    final width = getWith(context);
    final heigth = getHeigth(context);
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
          body: SingleChildScrollView(
            child: Column(
              children: [
                _Tittle(size: heigth),
                SizedBox(height: heigth * 0.02),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: Container(
                        height: heigth * 0.38,
                        width: double.infinity,
                        padding:
                            const EdgeInsets.only(left: 8, top: 8, bottom: 8),
                        decoration: BoxDecoration(
                            color: Palette.background,
                            borderRadius: BorderRadius.circular(10)),
                        child: Swiper(
                          itemBuilder: (BuildContext context, int index) {
                            return Container(
                              width: 300,
                              height: heigth * 0.38,
                              decoration: BoxDecoration(
                                  gradient: const LinearGradient(
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topCenter,
                                    colors: [
                                      Palette.complementary,
                                      Palette.primary,
                                    ],
                                  ),
                                  borderRadius: BorderRadius.circular(10)),
                            );
                          },
                          itemCount: 10,
                          itemWidth: 300.0,
                          itemHeight: 190.0,
                          layout: SwiperLayout.STACK,
                        ),
                      ),
                    ),
                    Container(
                      height: getHeigth(context) * 0.3,
                      padding: const EdgeInsets.only(top: 15),
                      width: double.infinity,
                      child: Container(
                        color: Palette.lowOpasityBox,
                        child: Column(children: [
                          Container(
                            width: getWith(context) * 0.9,
                            height: getHeigth(context) * 0.25,
                            padding: const EdgeInsets.only(top: 15),
                            child: Swiper(
                              physics: const BouncingScrollPhysics(),
                              loop: false,
                              itemBuilder: (BuildContext context, int index) {
                                return Container(
                                  alignment: Alignment.center,
                                  width: 300,
                                  child: _swapForm()[index],
                                );
                              },
                              itemCount: _swapForm().length,
                              itemWidth: 200.0,
                              pagination: const SwiperPagination(
                                  alignment: Alignment.bottomCenter,
                                  builder: DotSwiperPaginationBuilder(
                                      activeSize: 12,
                                      size: 9,
                                      activeColor:
                                          Color.fromARGB(255, 252, 185, 68),
                                      color: Palette.paginationColor)),
                            ),
                          ),
                        ]),
                      ),
                    )
                  ],
                ),
                SizedBox(height: heigth * 0.02),
                BottomBar(
                  leftIcon: Remix.arrow_left_s_line,
                  rightIcon: Remix.check_line,
                  leftTap: () => Navigator.of(context).pop(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

List<Widget> _swapForm() {
  return [
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        TextFormField(
          cursorColor: Palette.background,
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: const Icon(
              Remix.user_6_line,
              color: Palette.background,
            ),
            hintText: 'Nombre',
            hintStyle: TextStyles().formTextLigth,
          ),
        ),
        const Divider(),
        TextFormField(
          cursorColor: Palette.background,
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: const Icon(
              Remix.bank_card_line,
              color: Palette.background,
            ),
            hintText: 'Cedula',
            hintStyle: TextStyles().formTextLigth,
          ),
        ),
        const SizedBox(height: 30),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        TextFormField(
          cursorColor: Palette.background,
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: const Icon(
              Remix.whatsapp_line,
              color: Palette.background,
            ),
            hintText: 'Telefono',
            hintStyle: TextStyles().formTextLigth,
          ),
        ),
        const Divider(),
        TextFormField(
          cursorColor: Palette.background,
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: const Icon(
              Remix.mail_line,
              color: Palette.background,
            ),
            hintText: 'E-mail',
            hintStyle: TextStyles().formTextLigth,
          ),
        ),
        const SizedBox(height: 30),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        TextFormField(
          obscureText: true,
          cursorColor: Palette.background,
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: const Icon(
              Remix.lock_line,
              color: Palette.background,
            ),
            hintText: 'Contraseña',
            hintStyle: TextStyles().formTextLigth,
          ),
        ),
        const Divider(),
        TextFormField(
          obscureText: true,
          cursorColor: Palette.background,
          decoration: InputDecoration(
            border: InputBorder.none,
            prefixIcon: const Icon(
              Remix.lock_password_line,
              color: Palette.background,
            ),
            hintText: 'Confirmar contraseña',
            hintStyle: TextStyles().formTextLigth,
          ),
        ),
        const SizedBox(height: 30),
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const SizedBox(),
        ElevatedButton(
          style: ButtonStyle(
            elevation: MaterialStateProperty.all(5),
            shadowColor: MaterialStateProperty.all(Palette.lowOpasityBox2),
            backgroundColor: MaterialStateProperty.all(Palette.lowOpasityBox2),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
            ),
          ),
          onPressed: () {},
          child: Container(
            padding: const EdgeInsets.only(top: 15, bottom: 15),
            child: const Icon(
              Remix.user_follow_line,
              size: 70,
              color: Palette.background,
            ),
          ),
        ),
        const SizedBox(height: 30),
      ],
    ),
  ];
}

class _Tittle extends StatelessWidget {
  const _Tittle({
    required this.size,
  });
  final double size;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: getHeigth(context) * 0.15,
      width: double.infinity,
      padding: const EdgeInsets.only(right: 9, bottom: 9),
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
        alignment: Alignment.topLeft,
        child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextStyles().gradientText('Personal')),
      ),
    );
  }
}
