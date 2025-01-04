import 'package:flutter/material.dart';
import 'package:proyecto_moviles_3/screens/screens_caricaturas/pagina1ca.dart';
import 'package:proyecto_moviles_3/screens/screens_caricaturas/pagina2ca.dart';
import 'package:proyecto_moviles_3/screens/screens_caricaturas/pagina3ca.dart';
import 'package:proyecto_moviles_3/screens/screens_caricaturas/pagina4ca.dart';

class Caricaturas extends StatelessWidget {
  const Caricaturas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Películas de Caricaturas"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              "Películas de Caricaturas",
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
                    'Toy Story 4',
                    '2019',
                    'Aventura, Comedia, Animación',
                    'Woody y Buzz Lightyear deben embarcarse en una aventura para encontrar a Forky, el juguete de Bonnie que ha cobrado vida, mientras enfrentan nuevas situaciones y amenazas. La película explora la lealtad, la identidad y el crecimiento.',
                    'https://m.media-amazon.com/images/M/MV5BMTYzMDM4NzkxOV5BMl5BanBnXkFtZTgwNzM1Mzg2NzM@._V1_FMjpg_UX1000_.jpg',
                    const Pagina1ca(),
                  ),
                  // Tarjeta para película 2
                  _buildMovieCard(
                    context,
                    'Frozen 2',
                    '2019',
                    'Aventura, Fantasía, Animación',
                    'Elsa y Anna, junto con Olaf, Kristoff y Sven, emprenden un viaje hacia el norte para descubrir los orígenes de los poderes de Elsa. La película explora el vínculo familiar y el autodescubrimiento.',
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNbm28EZhooHofMhqRbjqYXm58jMZo87-n1A&s',
                    const Pagina2ca(),
                  ),
                  // Tarjeta para película 3
                  _buildMovieCard(
                    context,
                    'The Incredibles 2',
                    '2018',
                    'Aventura, Acción, Animación',
                    'La familia Parr se enfrenta a nuevos retos cuando Helen se convierte en la cara pública de la lucha contra el crimen, mientras que Bob (Mr. Increíble) se queda en casa para cuidar a los niños. La película trata de equilibrio familiar, acción y superpoderes.',
                    'https://m.media-amazon.com/images/M/MV5BMTEzNzY0OTg0NTdeQTJeQWpwZ15BbWU4MDU3OTg3MjUz._V1_FMjpg_UX1000_.jpg',
                    const Pagina3ca(),
                  ),
                  // Tarjeta para película 4
                  _buildMovieCard(
                    context,
                    'Shrek 2',
                    '2004',
                    'Aventura, Comedia, Animación',
                    'Shrek y Fiona recién casados deben enfrentarse a los padres de Fiona, lo que lleva a una serie de situaciones cómicas y malentendidos. La película combina humor con temas de aceptación personal.',
                    'https://m.media-amazon.com/images/M/MV5BMzNmNjQ1NmUtNzhiZS00YWE2LTg4N2ItZTA2ODdmOTMwOTQ1XkEyXkFqcGc@._V1_.jpg',
                    const Pagina4ca(),
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
