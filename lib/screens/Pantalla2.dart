import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Importar Firebase Auth
import 'package:proyecto_moviles_3/navigators/drawer.dart';
import 'package:proyecto_moviles_3/screens/Pantalla3.dart';
import 'package:proyecto_moviles_3/screens/Pantalla1.dart';

class Pantalla2 extends StatefulWidget {
  const Pantalla2({super.key});

  @override
  _Pantalla2State createState() => _Pantalla2State();
}

class _Pantalla2State extends State<Pantalla2> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final FirebaseAuth _auth = FirebaseAuth.instance; // Instancia de FirebaseAuth

  // Método para registrar al usuario
  Future<void> _register() async {
    try {
      UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Registro exitoso')),
      );
      print('Usuario registrado: ${userCredential.user?.email}');
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Pantalla3()), // Ir a Pantalla3 tras el registro
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: ${e.toString()}')),
      );
      print('Error al registrar usuario: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
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
            onPressed: _register, // Usar el método de registro
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
