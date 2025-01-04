import 'package:flutter/material.dart';
import 'package:proyecto_moviles_3/screens/screens_drama/pagina1dra.dart';
import 'package:proyecto_moviles_3/screens/screens_drama/pagina2dra.dart';
import 'package:proyecto_moviles_3/screens/screens_drama/pagina3dra.dart';
import 'package:proyecto_moviles_3/screens/screens_drama/pagina4dra.dart';

class Drama extends StatelessWidget {
  const Drama({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Películas de Drama"),
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              "Películas de Drama",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  // Tarjeta para película 1
                  _buildMovieCard(
                    context,
                    'The Shawshank Redemption',
                    '1994',
                    'Drama',
                    'Andy Dufresne, un hombre condenado por un crimen que no cometió, lucha por sobrevivir en prisión mientras busca la esperanza a través de la amistad y la redención.',
                    'https://m.media-amazon.com/images/M/MV5BMDAyY2FhYjctNDc5OS00MDNlLThiMGUtY2UxYWVkNGY2ZjljXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
                    const Pagina1dra(),
                  ),
                  // Tarjeta para película 2
                  _buildMovieCard(
                    context,
                    'Forrest Gump',
                    '1994',
                    'Drama',
                    'Forrest Gump es un hombre de baja inteligencia pero grandes logros que, a través de una vida llena de sorpresas y altibajos, muestra que cualquiera puede hacer una diferencia.',
                    'https://m.media-amazon.com/images/M/MV5BNDYwNzVjMTItZmU5YS00YjQ5LTljYjgtMjY2NDVmYWMyNWFmXkEyXkFqcGc@._V1_.jpg',
                    const Pagina2dra(),
                  ),
                  // Tarjeta para película 3
                  _buildMovieCard(
                    context,
                    'The Godfather',
                    '1972',
                    'Drama, Crimen',
                    'La saga de la familia Corleone y su incursión en el crimen organizado en América, centrada en la relación del patriarca Vito Corleone y su hijo Michael.',
                    'https://m.media-amazon.com/images/M/MV5BYTJkNGQyZDgtZDQ0NC00MDM0LWEzZWQtYzUzZDEwMDljZWNjXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
                    const Pagina3dra(),
                  ),
                  // Tarjeta para película 4
                  _buildMovieCard(
                    context,
                    'Schindler\'s List',
                    '1993',
                    'Drama, Historia',
                    'Durante la Segunda Guerra Mundial, un empresario alemán, Oskar Schindler, salva a miles de judíos del Holocausto gracias a su influencia y fortaleza de carácter.',
                    'https://m.media-amazon.com/images/M/MV5BNjM1ZDQxYWUtMzQyZS00MTE1LWJmZGYtNGUyNTdlYjM3ZmVmXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
                    const Pagina4dra(),
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
