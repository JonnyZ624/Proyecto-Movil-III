import 'package:flutter/material.dart';
import 'package:proyecto_moviles_3/navigators/drawer.dart';
import 'package:proyecto_moviles_3/screens/Pantalla4.dart';

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: MiDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("Catálogo de Películas"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Pantalla4()),
            ),
            child: const Text("Pantalla de Reproducción de Películas"),
          ),
        ],
      ),
    );
  }
}
