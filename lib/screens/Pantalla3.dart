import 'package:flutter/material.dart';
import 'package:proyecto_moviles_3/navigators/drawer.dart';
import 'package:proyecto_moviles_3/screens/Pantalla1.dart';
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
      appBar: AppBar(
        title: const Text("Catálogo de Géneros de Películas"),
        backgroundColor: Colors.grey[900],
        actions: [
          // Botón de salir con mayor visibilidad
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            iconSize: 30, // Aumentamos el tamaño del ícono
            color: Colors.redAccent, // Cambiamos el color del ícono
            onPressed: () {
              // Redirige a Pantalla1 al presionar el botón
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const Pantalla1()),
              );
            },
          ),
        ],
      ),
      drawer: MiDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 30),
            const Text(
              "Descubre los Géneros",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  // Tarjeta para género Acción
                  _buildGenreCard(
                    context,
                    "Acción",
                    "Escenas emocionantes con grandes dosis de adrenalina.",
                    Icons.flash_on,
                    Colors.deepOrange[100]!,
                    const Accion(),
                  ),
                  // Tarjeta para género Comedia
                  _buildGenreCard(
                    context,
                    "Comedia",
                    "Género que busca provocar risas con situaciones divertidas.",
                    Icons.sentiment_very_satisfied,
                    Colors.yellow[200]!,
                    const Comedia(),
                  ),
                  // Tarjeta para género Drama
                  _buildGenreCard(
                    context,
                    "Drama",
                    "Narrativas emocionales y profundas de personajes.",
                    Icons.theaters,
                    Colors.blueGrey[100]!,
                    const Drama(),
                  ),
                  // Tarjeta para género Ciencia Ficción
                  _buildGenreCard(
                    context,
                    "Ciencia Ficción",
                    "Exploración de mundos imaginarios y tecnologías futuristas.",
                    Icons.science,
                    Colors.blue[100]!,
                    const CienciaFiccion(),
                  ),
                  // Tarjeta para género Caricaturas
                  _buildGenreCard(
                    context,
                    "Caricaturas",
                    "Personajes de animación con un toque exagerado.",
                    Icons.toys,
                    Colors.pink[100]!,
                    const Caricaturas(),
                  ),
                  // Tarjeta para género Romántico
                  _buildGenreCard(
                    context,
                    "Romántico",
                    "Relaciones amorosas entre los personajes.",
                    Icons.favorite,
                    Colors.red[200]!,
                    const Romantico(),
                  ),
                  // Tarjeta para género Terror
                  _buildGenreCard(
                    context,
                    "Terror",
                    "Género destinado a asustar con horror o lo sobrenatural.",
                    Icons.local_hospital,
                    Colors.green[100]!,
                    const Terror(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Método para construir las tarjetas de los géneros con estilo minimalista
  Widget _buildGenreCard(
    BuildContext context,
    String title,
    String description,
    IconData icon,
    Color iconColor,
    Widget page,
  ) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 12),
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        ),
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 4,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Row(
            children: [
              // Icono representando el género
              CircleAvatar(
                backgroundColor: iconColor,
                radius: 30,
                child: Icon(
                  icon,
                  size: 32,
                  color: Colors.white,
                ),
              ),
              const SizedBox(width: 20),
              // Descripción y título del género
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      description,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black54,
                      ),
                    ),
                  ],
                ),
              ),
              // Icono de flecha para indicar que hay más
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.black45,
                size: 18,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
