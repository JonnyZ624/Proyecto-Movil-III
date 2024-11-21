import 'package:flutter/material.dart';
import 'package:proyecto_moviles_3/navigators/drawer.dart';
import 'package:proyecto_moviles_3/screens/Pantalla1.dart';

class Pantalla4 extends StatelessWidget {
  const Pantalla4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: MiDrawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("Pantalla de Reproducción de Películas"),
          ),
          const SizedBox(height: 20),
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Pantalla1()),
            ),
            child: const Text("Salir"),
          ),
        ],
      ),
    );
  }
}
