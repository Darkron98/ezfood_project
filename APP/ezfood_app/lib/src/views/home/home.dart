import 'package:flutter/material.dart';

import '../../core/logic/logic.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: double.infinity,
              height: getHeigth(context) * 0.3,
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(150),
                ),
              ),
            ),
            Container(
              height: getHeigth(context) * 0.7,
              decoration: const BoxDecoration(color: Colors.red),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: getHeigth(context) * 0.7,
                    width: 200,
                    child: Row(
                      children: [
                        Container(
                          width: 40,
                          height: getHeigth(context) * 0.7,
                          decoration: const BoxDecoration(
                            color: Colors.green,
                          ),
                        ),
                        Container(
                          width: 20,
                          height: getHeigth(context) * 0.7,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                          ),
                        ),
                        Container(
                          width: 40,
                          height: getHeigth(context) * 0.7,
                          decoration: const BoxDecoration(
                            color: Colors.green,
                          ),
                        ),
                        Container(
                          width: 20,
                          height: getHeigth(context) * 0.7,
                          decoration: const BoxDecoration(
                            color: Colors.red,
                          ),
                        ),
                        Container(
                          width: 40,
                          height: getHeigth(context) * 0.7,
                          decoration: const BoxDecoration(
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: getWith(context) - 200,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(),
                        Column(
                          children: [
                            ElevatedButton(
                              onPressed: () =>
                                  Navigator.of(context).pushNamed('catalogo'),
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(),
                                child: const Text('catalogo'),
                              ),
                            ),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () {},
                              child: Container(
                                width: 100,
                                height: 100,
                                decoration: const BoxDecoration(),
                                child: const Text('pedidos'),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
