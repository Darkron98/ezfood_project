import 'package:ezfood_app/src/core/logic/logic.dart';
import 'package:flutter/material.dart';

import '../../core/packages/packages.dart';

class Catalogo extends StatelessWidget {
  const Catalogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Container(
            height: getHeigth(context)*0.15, 
            width: double.infinity, 
            decoration: const BoxDecoration(
                color: Colors.yellow,
              ),
            ), 
          Container(
            height: getHeigth(context)*0.7, 
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.green,
            ),
            child: Column(children: [
              SizedBox(
                height: 40,
                width: getWith(context)*0.9,
                child: ListView.separated(
                  itemCount: 20,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (BuildContext context,int i)=> SizedBox(width: 10),
                  itemBuilder: (BuildContext context, int i) => 
                    ElevatedButton(
                      onPressed: (){}, 
                      child: Text(i.toString()),
                    ),
                ),   
              ),
              Row(
                children: [
                  ElevatedButton(onPressed: (){}, child: Text('Seleccionar mesa'),)
                ],
              ),
              Divider(),
              SizedBox(
                height: getHeigth(context)*0.5,
                width: getWith(context)*0.9,
                child: ListView.separated(
                  itemCount: 20,
                  separatorBuilder: (BuildContext context,int i)=> Padding(padding: EdgeInsets.all(8)),
                  itemBuilder: (BuildContext context, int i) => 
                    Container(
                      decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(10)),
                      child: ListTile(leading: Icon(Remix.restaurant_2_line),title: Text('food'),subtitle: Text('1 - 2 - 3 - 4'),trailing: Text('\$ price'),))
                ),   
              ),
            ],
            ),
          ), 
          Container(
            height: getHeigth(context)*0.15, 
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
