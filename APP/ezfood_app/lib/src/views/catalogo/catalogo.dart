import 'package:flutter/material.dart';

class Catalogo extends StatelessWidget {
  const Catalogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Text('catalogo'),
      ),
      body: const Center(
        child: Text('aqui va el catalogo'),
      ),
    );
  }
}
