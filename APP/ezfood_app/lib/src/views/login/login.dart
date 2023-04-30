import 'package:ezfood_app/src/core/logic/logic.dart';
import 'package:flutter/material.dart';
import '../../core/packages/packages.dart';
import '../../styles/styles.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        height: getHeigth(context),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Palette.complementary,
              Palette.primary,
              Palette.primary,
            ],
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: double.infinity,
                  height: getHeigth(context) * 0.15,
                  decoration: const BoxDecoration(
                    color: Palette.lowOpasityBox,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(75),
                    ),
                  ),
                  child: Center(
                      child: Text(
                    'EZ Food!',
                    style: TextStyles().appTittle,
                  )),
                ),
                SizedBox(height: getHeigth(context) * 0.05),
                Container(
                  width: double.infinity,
                  height: getHeigth(context) * 0.15,
                  decoration: const BoxDecoration(),
                  child: const Image(
                    image: AssetImage('assets/ez_logo.png'),
                  ),
                ),
                SizedBox(height: getHeigth(context) * 0.05),
                Container(
                  padding: const EdgeInsets.only(left: 50),
                  width: double.infinity,
                  height: getHeigth(context) * 0.1,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Login',
                    style: TextStyles().mainTittle,
                  ),
                ),
                Container(
                  width: double.infinity,
                  height: getHeigth(context) * 0.50,
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomCenter,
                        colors: [
                          Palette.primary,
                          Palette.primary,
                          Palette.complementary,
                          Palette.background,
                        ]),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(75),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20, top: 20),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Palette.background,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(55),
                        ),
                      ),
                      child: Container(
                        padding: const EdgeInsets.only(left: 30, right: 50),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const SizedBox(),
                            Form(
                              child: Column(
                                children: [
                                  TextFormField(
                                    cursorColor: Palette.complementary,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      prefixIcon: const Icon(
                                        Remix.user_6_line,
                                        color: Palette.complementary,
                                      ),
                                      hintText: 'Usuario',
                                      hintStyle: TextStyles().formText,
                                    ),
                                  ),
                                  const Divider(),
                                  TextFormField(
                                    cursorColor: Palette.complementary,
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      prefixIcon: const Icon(
                                        Remix.lock_line,
                                        color: Palette.complementary,
                                      ),
                                      hintText: 'Contraseña',
                                      hintStyle: TextStyles().formText,
                                    ),
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Checkbox(
                                              activeColor:
                                                  Palette.complementary,
                                              value: true,
                                              onChanged: (value) {}),
                                          Text(
                                            'Recordar usuario',
                                            style: TextStyles().formText,
                                          ),
                                        ],
                                      ),
                                      ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  Palette.complementary),
                                          shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                            const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                bottomLeft: Radius.circular(20),
                                                topRight: Radius.circular(20),
                                              ),
                                            ),
                                          ),
                                        ),
                                        onPressed: () => Navigator.of(context)
                                            .pushNamed('home'),
                                        child: Text(
                                          'Ingresar',
                                          style: TextStyles().buttonText,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(),
                          ],
                        ),
                      ),
                    ),
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
