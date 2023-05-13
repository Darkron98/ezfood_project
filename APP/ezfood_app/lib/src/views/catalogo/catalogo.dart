import 'package:ezfood_app/src/core/logic/logic.dart';

import 'package:flutter/material.dart';

import '../../core/packages/packages.dart';
import '../../styles/styles.dart';
import '../shared/shared.dart';

class Catalogo extends StatelessWidget {
  const Catalogo({super.key});

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
              Tittle(size: heigth),
              SizedBox(
                height: heigth * 0.7,
                width: double.infinity,
                child: Column(
                  children: [
                    Container(
                      height: 70,
                      width: width * 0.9,
                      padding: const EdgeInsets.only(top: 5),
                      child: const CategoryList(),
                    ),
                    Container(
                      padding: const EdgeInsets.only(
                          top: 8, bottom: 4, right: 30, left: 30),
                      alignment: Alignment.centerRight,
                      child: const CartWidget(),
                    ),
                    const Divider(),
                    Menu(
                      heigth: heigth,
                      width: width,
                    ),
                  ],
                ),
              ),
              SizedBox(height: heigth * 0.02),
              BottomBar(
                leftIcon: Remix.arrow_left_s_line,
                rightIcon: Remix.settings_3_fill,
                leftTap: () => Navigator.of(context).pop(),
                rightTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void itemModal(BuildContext context) {
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
                        color: Palette.complementaryText,
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
                    cursorColor: Palette.complementary,
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
                        Text(
                          'PU',
                          style: TextStyles().modalTittle,
                        ),
                        const SizedBox(width: 5),
                        Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 240, 240, 240),
                              borderRadius: BorderRadius.circular(2)),
                          child: Text(
                            'COP\$ 18,000',
                            style: TextStyles().totalPrice,
                          ),
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

void cartModal(BuildContext context) {
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
                      child: Icon(
                        Remix.restaurant_2_fill,
                        color: Palette.complementaryText,
                      ),
                    ),
                    trailing: GestureDetector(
                      onTap: () {
                        itemModal(context);
                      },
                      child: const Icon(
                        Remix.edit_line,
                        color: Palette.complementaryText,
                      ),
                    ),
                    title: Text(
                      'Item $i',
                      style: TextStyles().listTiletittle,
                    ),
                    subtitle: Text(
                      'COP\$ 18,000',
                      style: TextStyles().listTilesubtittle,
                    ),
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
                    Text(
                      'Total',
                      style: TextStyles().modalTittle,
                    ),
                    const SizedBox(width: 5),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 240, 240, 240),
                          borderRadius: BorderRadius.circular(2)),
                      child: Text(
                        'COP\$ 50,000',
                        style: TextStyles().totalPrice,
                      ),
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

class Menu extends StatelessWidget {
  const Menu({
    super.key,
    required this.heigth,
    required this.width,
  });

  final double heigth;
  final double width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: heigth * 0.485,
      width: width * 0.9,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GridView.builder(
          itemCount: 20,
          physics: const BouncingScrollPhysics(),
          itemBuilder: (BuildContext context, int i) => Container(
            decoration: BoxDecoration(
                color: Palette.background,
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                      child: SizedBox(
                        child: Image(
                          image: NetworkImage(
                              'https://comidasamericanas.net/wp-content/uploads/2021/10/Hamburguesas-americanas-1.jpg'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5, top: 2),
                      child: Text(
                        'Cangreburger',
                        style: TextStyles().menuItemTittle,
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 2, left: 5),
                      child: Text(
                        'COP\$ 18,000',
                        style: TextStyles().menuPrice,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        customSnackbar(context,
                            message: 'Item añadido',
                            color: Palette.complementary);
                      },
                      child: Container(
                        width: 35,
                        height: 35,
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomRight,
                            end: Alignment.topLeft,
                            colors: [
                              Palette.primary,
                              Palette.complementary,
                            ],
                          ),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(10),
                            topLeft: Radius.circular(10),
                          ),
                        ),
                        child: const Icon(
                          Remix.add_line,
                          size: 30,
                          color: Palette.background,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
        ),
      ),
    );
  }
}

class CartWidget extends StatelessWidget {
  const CartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Menú',
          style: TextStyles().subTittle,
        ),
        GestureDetector(
            onTap: () {
              cartModal(context);
            },
            child: const Icon(
              Remix.shopping_cart_line,
              color: Palette.background,
              size: 40,
            )),
      ],
    );
  }
}

class CategoryList extends StatelessWidget {
  const CategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: 20,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (BuildContext context, int i) =>
            const SizedBox(width: 10),
        itemBuilder: (BuildContext context, int i) => GestureDetector(
          onTap: () {},
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 120,
              height: 60,
              decoration: const BoxDecoration(
                color: Colors.transparent,
              ),
              child: ClipRRect(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 120,
                      height: 45,
                      alignment: Alignment.centerRight,
                      padding: const EdgeInsets.only(right: 15),
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Palette.paginationColor,
                            Palette.lowOpCardColor,
                            Palette.lowOpCardColor,
                          ],
                        ),
                      ),
                      child: const Icon(
                        Remix.restaurant_fill,
                        size: 50,
                        color: Palette.paginationColor,
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 20,
                      decoration:
                          const BoxDecoration(color: Palette.background),
                      child: Text(
                        'Category $i',
                        textAlign: TextAlign.center,
                        style: TextStyles().cardText,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Tittle extends StatelessWidget {
  const Tittle({
    super.key,
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
            child: TextStyles().gradientText('Catalogo')),
      ),
    );
  }
}
