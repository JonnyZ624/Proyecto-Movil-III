import 'package:flutter/material.dart';
import 'package:proyecto_moviles_3/screens/screens_accion/pagina1a.dart';
import 'package:proyecto_moviles_3/screens/screens_accion/pagina2a.dart';
import 'package:proyecto_moviles_3/screens/screens_accion/pagina3a.dart';
import 'package:proyecto_moviles_3/screens/screens_accion/pagina4a.dart';

class Accion extends StatelessWidget {
  const Accion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Películas de Acción"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              "Películas de Acción",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.blueAccent,
              ),
            ),
            const SizedBox(height: 20),

            Expanded(
              child: ListView(
                children: [
                  // Tarjeta para película 1
                  _buildMovieCard(
                    context,
                    'Mad Max: Fury Road',
                    '2015',
                    'Acción, Aventura',
                    'El mundo ha sido devastado por una guerra nuclear, y Max, un hombre solitario, se ve atrapado en una lucha mortal por sobrevivir junto a Imperator Furiosa. Juntos, deben escapar de un tirano en un frenético viaje por el desierto.',
                    'https://m.media-amazon.com/images/M/MV5BZDRkODJhOTgtOTc1OC00NTgzLTk4NjItNDgxZDY4YjlmNDY2XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
                    const Pagina1a(),
                  ),
                  // Tarjeta para película 2
                  _buildMovieCard(
                    context,
                    'The Dark Knight',
                    '2008',
                    'Acción, Crimen',
                    'Batman se enfrenta al Joker, un villano psicópata que busca sumergir Gotham City en el caos. La película no solo explora las increíbles batallas físicas, sino que también plantea preguntas filosóficas sobre el bien y el mal, así como el sacrificio personal.',
                    'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_FMjpg_UX1000_.jpg',
                    const Pagina2a(),
                  ),
                  // Tarjeta para película 3
                  _buildMovieCard(
                    context,
                    'Avengers: Endgame',
                    '2019',
                    'Acción, Aventura, Ciencia Ficción',
                    'Después del trágico chasquido de Thanos, los Vengadores restantes se embarcan en una misión final para reunir las Gemas del Infinito y revertir la catástrofe. Esta épica culminación pone fin a una saga de diez años.',
                    'https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_FMjpg_UX1000_.jpg',
                    const Pagina3a(),
                  ),
                  // Tarjeta para película 4
                  _buildMovieCard(
                    context,
                    'John Wick',
                    '2014',
                    'Acción, Crimen, Thriller',
                    'Tras la muerte de su perro, un regalo de su esposa fallecida, John Wick, un ex asesino, se ve obligado a regresar a su antigua vida y vengar la muerte de su único compañero, enfrentándose a criminales despiadados.',
                    'https://m.media-amazon.com/images/M/MV5BY2Q2ZmI5ZjUtNWVhMC00YzJkLTlmYjMtY2RmZDhkNzEzYjZhXkEyXkFqcGc@._V1_.jpg',
                    const Pagina4a(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Método para construir las tarjetas de las películas con texto sobre la imagen
  Widget _buildMovieCard(
    BuildContext context,
    String title,
    String year,
    String genre,
    String description,
    String imageUrl,
    Widget page,
  ) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      elevation: 8,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        clipBehavior: Clip.antiAlias, // Para evitar que el contenido se desborde
        children: [
          // Imagen de fondo
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Image.network(
              imageUrl,
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
          ),
          // Fondo oscuro semi-transparente para el texto
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.6),
            ),
          ),
          // Texto sobre la imagen
          Positioned(
            left: 10,
            bottom: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 10.0,
                        color: Colors.black,
                        offset: Offset(2.0, 2.0),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 5),
                Text(
                  "$year | $genre",
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        blurRadius: 5.0,
                        color: Colors.black,
                        offset: Offset(1.0, 1.0),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
                // Descripción con más espacio
                Container(
                  width: MediaQuery.of(context).size.width - 20, // Ajuste al tamaño de pantalla
                  padding: const EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.6),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    description,
                    style: const TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          blurRadius: 5.0,
                          color: Colors.black,
                          offset: Offset(1.0, 1.0),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Botón para ver la película
          Positioned(
            right: 10,
            bottom: 10,
            child: ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => page),
              ),
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text("Ver"),
            ),
          ),
        ],
      ),
    );
  }
}
