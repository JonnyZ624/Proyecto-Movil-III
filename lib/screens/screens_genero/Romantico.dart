import 'package:flutter/material.dart';
import 'package:proyecto_moviles_3/screens/screens_romantico/pagina1ro.dart';
import 'package:proyecto_moviles_3/screens/screens_romantico/pagina2ro.dart';
import 'package:proyecto_moviles_3/screens/screens_romantico/pagina3ro.dart';
import 'package:proyecto_moviles_3/screens/screens_romantico/pagina4ro.dart';

class Romantico extends StatelessWidget {
  const Romantico({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Películas Románticas"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              "Películas Románticas",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.pink,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  // Tarjeta para película 1
                  _buildMovieCard(
                    context,
                    'The Notebook',
                    '2004',
                    'Romance',
                    'Una historia de amor intensa que sigue a Noah y Allie mientras luchan contra las diferencias sociales y el tiempo para estar juntos.',
                    'https://m.media-amazon.com/images/M/MV5BZjE0ZjgzMzYtMTAxYi00NGMzLThmZDktNzFlMzA2MWRmYWQ0XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
                    const Pagina1ro(),
                  ),
                  // Tarjeta para película 2
                  _buildMovieCard(
                    context,
                    'Pride and Prejudice',
                    '2005',
                    'Romance, Drama',
                    'Una adaptación de la obra clásica de Jane Austen sobre Elizabeth Bennet y su relación con el distante Mr. Darcy.',
                    'https://m.media-amazon.com/images/M/MV5BMTA1NDQ3NTcyOTNeQTJeQWpwZ15BbWU3MDA0MzA4MzE@._V1_.jpg',
                    const Pagina2ro(),
                  ),
                  // Tarjeta para película 3
                  _buildMovieCard(
                    context,
                    'La La Land',
                    '2016',
                    'Romance, Musical',
                    'Un músico y una actriz luchan por encontrar el equilibrio entre su vida amorosa y sus sueños profesionales en Los Ángeles.',
                    'https://m.media-amazon.com/images/M/MV5BMzUzNDM2NzM2MV5BMl5BanBnXkFtZTgwNTM3NTg4OTE@._V1_.jpg',
                    const Pagina3ro(),
                  ),
                  // Tarjeta para película 4
                  _buildMovieCard(
                    context,
                    'Titanic',
                    '1997',
                    'Romance, Drama',
                    'Una joven rica y un joven pobre se enamoran durante el fatídico viaje inaugural del Titanic.',
                    'https://es.web.img3.acsta.net/c_310_420/medias/nmedia/18/86/91/41/19870073.jpg',
                    const Pagina4ro(),
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
