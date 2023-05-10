import 'package:ezfood_app/src/core/logic/logic.dart';

import 'package:flutter/material.dart';

import '../../core/packages/packages.dart';
import '../../styles/styles.dart';
import '../shared/shared.dart';

class Catalogo extends StatelessWidget {
  const Catalogo({super.key});

  @override
  Widget build(BuildContext context) {
    final width = getWith(context) ;
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
                      child: CategoryList(),
                    ),
                    Container(
                      padding:
                          const EdgeInsets.only(top: 8, bottom: 4, right: 30, left: 30),
                      alignment: Alignment.centerRight,
                      child: CartWidget(),
                    ),
                    const Divider(),
                    Menu(heigth: heigth,width: width,),                 
                  ],
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
          itemBuilder: (BuildContext context, int i) =>
              Container(
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
                      padding: const EdgeInsets.only(
                          left: 5, top: 2),
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
                      padding:
                          const EdgeInsets.only(bottom: 2, left: 5),
                      child: Text(
                        'COP\$ 18,000',
                        style: TextStyles().menuPrice,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {customSnackbar(context,message: 'Pedido agregado',color: Palette.complementary);},
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
                        child: Icon(Remix.add_line,size: 30,color: Palette.background,),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
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
        Text('Menú',style: TextStyles().subTittle,),
        GestureDetector(
            onTap: () {},
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
        itemBuilder: (BuildContext context, int i) =>
            GestureDetector(
          onTap: () {},
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: 120,
              height: 60,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Palette.complementaryText,
                      blurRadius: 7,
                      spreadRadius: 1,
                      offset: Offset(0, 4))
                ],
                color: Palette.background,
              ),
              child: ClipRRect(
                child: Column(
                  children: [
                    Container(
                      width: 120,
                      height: 45,
                      decoration: const BoxDecoration(
                          color: Colors.blue),
                    ),
                    Container(
                      width: 120,
                      height: 15,
                      decoration: const BoxDecoration(
                          color: Palette.background),
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
    super.key, required this.size,
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
