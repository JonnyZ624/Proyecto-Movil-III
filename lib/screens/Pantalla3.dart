import 'package:flutter/material.dart';
import 'package:proyecto_moviles_3/navigators/drawer.dart';
import 'package:proyecto_moviles_3/screens/screens_genero/Accion.dart';
import 'package:proyecto_moviles_3/screens/screens_genero/Caricuaturas.dart';
import 'package:proyecto_moviles_3/screens/screens_genero/Ciencia_ficcion.dart';
import 'package:proyecto_moviles_3/screens/screens_genero/Comedia.dart';
import 'package:proyecto_moviles_3/screens/screens_genero/Drama.dart';
import 'package:proyecto_moviles_3/screens/screens_genero/Romantico.dart';
import 'package:proyecto_moviles_3/screens/screens_genero/Terror.dart';

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
            child: Text("Catálogo de Géneros de Películas"),
          ),
          const SizedBox(height: 20),

          // Lista de tarjetas de géneros
          Expanded(
            child: ListView(
              children: [
                // Tarjeta para género Acción
                Card(
                  margin: const EdgeInsets.all(10),
                  elevation: 5,
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(10),
                    title: Text("Acción", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: const Text("Descripción: Género lleno de escenas emocionantes, con grandes dosis de adrenalina."),
                    trailing: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Accion(),
                        ),
                      ),
                      child: const Text("Ver"),
                    ),
                  ),
                ),
                // Tarjeta para género Comedia
                Card(
                  margin: const EdgeInsets.all(10),
                  elevation: 5,
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(10),
                    title: Text("Comedia", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: const Text("Descripción: Este género busca provocar risas, con situaciones divertidas y personajes cómicos."),
                    trailing: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Comedia(),
                        ),
                      ),
                      child: const Text("Ver"),
                    ),
                  ),
                ),
                // Tarjeta para género Drama
                Card(
                  margin: const EdgeInsets.all(10),
                  elevation: 5,
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(10),
                    title: Text("Drama", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: const Text("Descripción: Género centrado en la narrativa emocional y profunda de personajes."),
                    trailing: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Drama(),
                        ),
                      ),
                      child: const Text("Ver"),
                    ),
                  ),
                ),
                // Tarjeta para género Ciencia Ficción
                Card(
                  margin: const EdgeInsets.all(10),
                  elevation: 5,
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(10),
                    title: Text("Ciencia Ficción", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: const Text("Descripción: Género donde se exploran tecnologías futuras, alienígenas y mundos imaginarios."),
                    trailing: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CienciaFiccion(),
                        ),
                      ),
                      child: const Text("Ver"),
                    ),
                  ),
                ),
                // Tarjeta para género Caricaturas
                Card(
                  margin: const EdgeInsets.all(10),
                  elevation: 5,
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(10),
                    title: Text("Caricaturas", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: const Text("Descripción: Género de animación, con personajes que pueden ser exagerados o surrealistas."),
                    trailing: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Caricaturas(),
                        ),
                      ),
                      child: const Text("Ver"),
                    ),
                  ),
                ),
                // Tarjeta para género Romántico
                Card(
                  margin: const EdgeInsets.all(10),
                  elevation: 5,
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(10),
                    title: Text("Romántico", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: const Text("Descripción: Género enfocado en relaciones amorosas y emocionales entre los personajes."),
                    trailing: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Romantico(),
                        ),
                      ),
                      child: const Text("Ver"),
                    ),
                  ),
                ),
                // Tarjeta para género Terror
                Card(
                  margin: const EdgeInsets.all(10),
                  elevation: 5,
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(10),
                    title: Text("Terror", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: const Text("Descripción: Género destinado a asustar al espectador, utilizando suspenso, horror o lo sobrenatural."),
                    trailing: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Terror(),
                        ),
                      ),
                      child: const Text("Ver"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
