import 'package:flutter/material.dart';
import 'package:proyecto_moviles_3/navigators/drawer.dart';

class Pantalla1 extends StatelessWidget {
  const Pantalla1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: MiDrawer(),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Bienvenidos",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              "Inicio",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
