import 'package:flutter/material.dart';
import 'package:proyecto_moviles_3/screens/screens_ciencificcion/pagina1ci.dart';
import 'package:proyecto_moviles_3/screens/screens_ciencificcion/pagina2ci.dart';
import 'package:proyecto_moviles_3/screens/screens_ciencificcion/pagina3ci.dart';
import 'package:proyecto_moviles_3/screens/screens_ciencificcion/pagina4ci.dart';

class CienciaFiccion extends StatelessWidget {
  const CienciaFiccion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Películas de Ciencia Ficción"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const Text(
              "Películas de Ciencia Ficción",
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
                    'Dune',
                    '2021',
                    'Aventura, Ciencia Ficción',
                    'La historia sigue a Paul Atreides, el joven heredero de una poderosa familia aristocrática. Junto con su familia, debe trasladarse al desértico planeta Arrakis, el único lugar donde se encuentra la especia más preciada, mientras enfrentan conspiraciones que amenazan su supervivencia.',
                    'https://m.media-amazon.com/images/M/MV5BNWIyNmU5MGYtZDZmNi00ZjAwLWJlYjgtZTc0ZGIxMDE4ZGYwXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
                    const Pagina1c1(),
                  ),
                  // Tarjeta para película 2
                  _buildMovieCard(
                    context,
                    'Interstellar',
                    '2014',
                    'Aventura, Ciencia Ficción',
                    'Un grupo de astronautas viaja a través de un agujero negro en busca de un nuevo hogar para la humanidad. La película explora el amor, el sacrificio y la supervivencia a medida que los límites del tiempo y el espacio se rompen.',
                    'https://es.web.img3.acsta.net/pictures/14/10/02/11/07/341344.jpg',
                    const Pagina2c1(),
                  ),
                  // Tarjeta para película 3
                  _buildMovieCard(
                    context,
                    'Blade Runner 2049',
                    '2017',
                    'Aventura, Ciencia Ficción',
                    'En un futuro distópico, el oficial K de la policía encuentra un misterio antiguo que podría cambiar el destino de la humanidad. La película se adentra en cuestiones filosóficas sobre la vida, la identidad y la tecnología.',
                    'https://m.media-amazon.com/images/M/MV5BNzA1Njg4NzYxOV5BMl5BanBnXkFtZTgwODk5NjU3MzI@._V1_.jpg',
                    const Pagina3c1(),
                  ),
                  // Tarjeta para película 4
                  _buildMovieCard(
                    context,
                    'Ready Player One',
                    '2018',
                    'Aventura, Ciencia Ficción',
                    'En un futuro cercano, Wade Watts, un joven soñador, participa en una caza del tesoro virtual dentro del mundo de OASIS, que le llevará a cuestionar la realidad, el dinero y la verdadera naturaleza del poder.',
                    'https://es.web.img3.acsta.net/pictures/18/02/14/12/20/1230467.jpg',
                    const Pagina4c1(),
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
