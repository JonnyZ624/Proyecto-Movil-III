import 'package:flutter/material.dart';
import 'package:proyecto_moviles_3/screens/screens_comedia/pagina1co.dart';
import 'package:proyecto_moviles_3/screens/screens_comedia/pagina2co.dart';
import 'package:proyecto_moviles_3/screens/screens_comedia/pagina3co.dart';
import 'package:proyecto_moviles_3/screens/screens_comedia/pagina4co.dart';

class Comedia extends StatelessWidget {
  const Comedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Películas de Comedia"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              "Películas de Comedia",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.orange,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  // Tarjeta para película 1
                  _buildMovieCard(
                    context,
                    'Superbad',
                    '2007',
                    'Comedia',
                    'Dos adolescentes, Seth y Evan, intentan ganar el respeto de sus compañeros de clase organizando una fiesta alocada. Todo sale mal mientras intentan comprar alcohol, pero la experiencia les enseña lecciones sobre la amistad y el futuro.',
                    'https://m.media-amazon.com/images/M/MV5BNjk0MzdlZGEtNTRkOC00ZDRiLWJkYjAtMzUzYTRiNzk1YTViXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
                    const Pagina1co(),
                  ),
                  // Tarjeta para película 2
                  _buildMovieCard(
                    context,
                    'The Hangover',
                    '2009',
                    'Comedia',
                    'Tres amigos deben averiguar cómo ocurrieron los eventos de una noche loca en Las Vegas, donde se despiertan con amnesia, una historia incompleta, y sin recordar cómo su amigo se casó.',
                    'https://m.media-amazon.com/images/M/MV5BNDI2MzBhNzgtOWYyOS00NDM2LWE0OGYtOGQ0M2FjMTI2NTllXkEyXkFqcGc@._V1_.jpg',
                    const Pagina2co(),
                  ),
                  // Tarjeta para película 3
                  _buildMovieCard(
                    context,
                    '21 Jump Street',
                    '2012',
                    'Comedia',
                    'Dos jóvenes policías, interpretados por Jonah Hill y Channing Tatum, son enviados de vuelta al instituto para resolver un caso relacionado con drogas. Los problemas surgen cuando deben enfrentarse tanto al crimen como a su adolescencia.',
                    'https://m.media-amazon.com/images/M/MV5BMTg2NjJiODctM2IyMS00MmQ5LWI1YmQtNTBjMTI4M2U2YzA5XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
                    const Pagina3co(),
                  ),
                  // Tarjeta para película 4
                  _buildMovieCard(
                    context,
                    'Crazy, Stupid, Love.',
                    '2011',
                    'Comedia, Romance',
                    'Tras un inesperado divorcio, Cal Weaver busca ayuda para entender el mundo moderno del romance. Con la guía de un joven mujeriego, se convierte en un hombre renovado mientras enfrenta su complicada vida amorosa.',
                    'https://m.media-amazon.com/images/M/MV5BMTg2MjkwMTM0NF5BMl5BanBnXkFtZTcwMzc4NDg2NQ@@._V1_FMjpg_UX1000_.jpg',
                    const Pagina4co(),
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
