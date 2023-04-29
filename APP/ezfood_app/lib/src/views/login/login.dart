import 'package:flutter/material.dart';
import '../../core/packages/packages.dart';
import '../../styles/styles.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Palette.background,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: size.height * 0.15,
              decoration: const BoxDecoration(
                color: Colors.yellow,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(75),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: size.height * 0.25,
              decoration: const BoxDecoration(),
            ),
            Container(
              padding: const EdgeInsets.only(left: 50),
              width: double.infinity,
              height: size.height * 0.1,
              alignment: Alignment.centerLeft,
              child: const Text('Login'),
            ),
            Container(
              width: double.infinity,
              height: size.height * 0.50,
              decoration: const BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(75),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(55),
                    ),
                  ),
                  child: Container(
                    padding: const EdgeInsets.only(left: 20, right: 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(),
                        Form(
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Remix.user_6_line),
                                  labelText: 'Usuario',
                                  hintText: 'UserName',
                                ),
                              ),
                              TextFormField(
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Remix.lock_line),
                                  labelText: 'Contraseña',
                                  hintText: 'Contraseña',
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
                                          value: true, onChanged: (value) {}),
                                      const Text('Recordar usuario'),
                                    ],
                                  ),
                                  ElevatedButton(
                                    style: ButtonStyle(
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
                                    onPressed: () =>
                                        Navigator.of(context).pushNamed('home'),
                                    child: const Text('Ingresar'),
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
    );
  }
}
