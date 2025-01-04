import 'package:flutter/material.dart';
import 'package:proyecto_moviles_3/screens/screens_terror/pagina1t.dart';
import 'package:proyecto_moviles_3/screens/screens_terror/pagina2t.dart';
import 'package:proyecto_moviles_3/screens/screens_terror/pagina3t.dart';
import 'package:proyecto_moviles_3/screens/screens_terror/pagina4t.dart';

class Terror extends StatelessWidget {
  const Terror({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Películas de Terror"),
        backgroundColor: Colors.redAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              "Películas de Terror",
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView(
                children: [
                  // Tarjeta para Insidious
                  _buildMovieCard(
                    context,
                    'Insidious',
                    '2010',
                    'Terror, Sobrenatural',
                    'Una familia se ve atrapada en una serie de sucesos extraños y aterradores que parecen estar conectados a su hijo comatoso.',
                    'https://es.web.img3.acsta.net/pictures/14/05/07/09/01/306626.jpg',
                    const Pagina1t(),
                  ),
                  // Tarjeta para Hereditary
                  _buildMovieCard(
                    context,
                    'Hereditary',
                    '2018',
                    'Terror, Drama',
                    'Una familia se enfrenta a terribles revelaciones sobre sus ancestros y una maldición oscura que los persigue.',
                    'https://m.media-amazon.com/images/M/MV5BMzI3MjNmYzItZmE5Yi00ODZhLThjNTAtYjU3MmExMGY3MWU0XkEyXkFqcGc@._V1_.jpg',
                    const Pagina2t(),
                  ),
                  // Tarjeta para The Conjuring
                  _buildMovieCard(
                    context,
                    'The Conjuring',
                    '2013',
                    'Terror, Sobrenatural',
                    'Basada en hechos reales, sigue a dos investigadores paranormales mientras ayudan a una familia aterrorizada por una entidad maligna.',
                    'https://m.media-amazon.com/images/M/MV5BMTM3NjA1NDMyMV5BMl5BanBnXkFtZTcwMDQzNDMzOQ@@._V1_FMjpg_UX1000_.jpg',
                    const Pagina3t(),
                  ),
                  // Tarjeta para A Quiet Place
                  _buildMovieCard(
                    context,
                    'A Quiet Place',
                    '2018',
                    'Terror, Suspense',
                    'Una familia debe vivir en silencio absoluto mientras luchan por sobrevivir a criaturas que cazan por el sonido.',
                    'https://m.media-amazon.com/images/M/MV5BMjI0MDMzNTQ0M15BMl5BanBnXkFtZTgwMTM5NzM3NDM@._V1_.jpg',
                    const Pagina4t(),
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
