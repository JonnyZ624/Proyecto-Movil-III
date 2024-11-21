import 'package:flutter/material.dart';

import 'package:proyecto_moviles_3/navigators/drawer.dart';
import 'package:proyecto_moviles_3/screens/Pantalla1.dart';
import 'package:proyecto_moviles_3/screens/Pantalla3.dart';

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Pantalla2"),
      ),
      drawer: MiDrawer(),
      body: Column(
        children: [
          const Text("Registrarse"),
          TextField(
            controller: emailController,
            decoration: const InputDecoration(labelText: "Correo electrónico"),
          ),
          TextField(
            controller: passwordController,
            obscureText: true,
            decoration: const InputDecoration(labelText: "Contraseña"),
          ),
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Pantalla3()),
            ),
            child: const Text("Registro"),
          ),
          
          ElevatedButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Pantalla1()),
            ),
            child: const Text("Ir a Inicio"),
          ),
        ],
      ),
    );
  }
}
