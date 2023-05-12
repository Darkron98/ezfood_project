import 'package:ezfood_app/src/core/logic/logic.dart';

import 'package:flutter/material.dart';

import '../../core/packages/packages.dart';
import '../../styles/styles.dart';
import '../shared/shared.dart';

class Comandas extends StatelessWidget {
  const Comandas({super.key});

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
          body: Column(
            children: [
              _Tittle(size: heigth),
              SizedBox(height: heigth * 0.02),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Container(
                  height: heigth * 0.68,
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 8, top: 8, bottom: 8),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      bottomLeft: Radius.circular(25),
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                    child: Scrollbar(
                      thickness: 6,
                      thumbVisibility: true,
                      radius: const Radius.circular(3),
                      child: ListView.separated(
                        padding: const EdgeInsets.only(right: 12),
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, i) => Container(
                          height: 70,
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 240, 240, 240),
                              borderRadius: BorderRadius.circular(10)),
                          child: ListTile(
                            leading: const Padding(
                              padding: EdgeInsets.only(top: 8),
                              child: Icon(Remix.restaurant_2_fill),
                            ),
                            trailing: GestureDetector(
                              onTap: () {
                                comandaModal(context);
                              },
                              child: const Icon(Remix.search_eye_line),
                            ),
                            title: Text('Mesa ${i + 1}'),
                            subtitle: const Text('COP\$ 18,000'),
                          ),
                        ),
                        itemCount: 20,
                        separatorBuilder: (BuildContext context, int index) =>
                            const Divider(),
                      ),
                    ),
                  ),
                ),
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
    );
  }
}

void _itemModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.transparent,
    enableDrag: false,
    isScrollControlled: true,
    builder: (context) => Padding(
      padding: EdgeInsets.only(
        left: 30,
        right: 30,
        bottom: getHeigth(context) * 0.2,
      ),
      child: Container(
        height: 285,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'item #',
                      style: TextStyles().modalTittle,
                    ),
                    IconButton(
                      onPressed: () {},
                      iconSize: 20,
                      icon: const Icon(
                        Remix.delete_bin_7_line,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 8, right: 8),
                child: Divider(),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 5),
                child: Container(
                  height: 150,
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 224, 224, 224),
                      borderRadius: BorderRadius.circular(10)),
                  child: TextField(
                    keyboardType: TextInputType.multiline,
                    maxLines: 10,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Observaciones',
                      hintStyle: TextStyles().formText,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Text('PU'),
                        const SizedBox(width: 5),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 240, 240, 240),
                              borderRadius: BorderRadius.circular(2)),
                          child: const Text('COP\$ 18,000'),
                        ),
                      ],
                    ),
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      iconSize: 40,
                      icon: const Icon(
                        Remix.check_line,
                        color: Colors.green,
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

void comandaModal(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    backgroundColor: Colors.transparent,
    builder: (context) => Container(
      padding: const EdgeInsets.only(left: 8, right: 8),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Container(
                width: 50,
                height: 5,
                decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(2.5)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 22, top: 7, bottom: 7),
            child: Text(
              'Mesa #',
              style: TextStyles().modalTittle,
              textAlign: TextAlign.left,
            ),
          ),
          const Divider(),
          SizedBox(
            height: getHeigth(context) * 0.5,
            child: Scrollbar(
              thickness: 6,
              thumbVisibility: true,
              radius: const Radius.circular(3),
              child: ListView.separated(
                padding: const EdgeInsets.only(right: 12),
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, i) => Container(
                  height: 70,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 240, 240, 240),
                      borderRadius: BorderRadius.circular(10)),
                  child: ListTile(
                    leading: const Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Icon(Remix.restaurant_2_fill),
                    ),
                    trailing: GestureDetector(
                      onTap: () {
                        _itemModal(context);
                      },
                      child: const Icon(Remix.edit_line),
                    ),
                    title: Text('Item $i'),
                    subtitle: const Text('COP\$ 18,000'),
                  ),
                ),
                itemCount: 5,
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(),
              ),
            ),
          ),
          const Divider(),
          Padding(
            padding: const EdgeInsets.only(bottom: 8, right: 22, left: 22),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Text('Total'),
                    const SizedBox(width: 5),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 240, 240, 240),
                          borderRadius: BorderRadius.circular(2)),
                      child: const Text('COP\$ 50,000'),
                    ),
                  ],
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  iconSize: 40,
                  icon: const Icon(
                    Remix.check_line,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ),
  );
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
            child: TextStyles().gradientText('Comandas')),
      ),
    );
  }
}
