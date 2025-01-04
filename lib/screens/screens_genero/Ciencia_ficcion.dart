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
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("Películas de Ciencia Ficción "),
          ),
          const SizedBox(height: 20),

          // Lista de tarjetas de películas
          Expanded(
            child: ListView(
              children: [
                // Tarjeta para película 1
                Card(
                  margin: const EdgeInsets.all(10),
                  elevation: 5,
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(10),
                    title: Text("Dune", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      "Año: 2021\nGénero: Aventura, Ciencia Ficción\nLa historia sigue a Paul Atreides, el joven heredero de una poderosa familia aristocrática. Junto con su familia, debe trasladarse al desértico planeta Arrakis, el único lugar donde se encuentra la especia más preciada, mientras enfrentan conspiraciones que amenazan su supervivencia.",
                      style: const TextStyle(fontSize: 14),
                    ),
                    leading: Image.network(
                      'https://m.media-amazon.com/images/M/MV5BNWIyNmU5MGYtZDZmNi00ZjAwLWJlYjgtZTc0ZGIxMDE4ZGYwXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', // Ejemplo de imagen
                      width: 100,
                      height: 150,
                      fit: BoxFit.contain, // Mantiene la imagen visible completamente
                    ),
                    trailing: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Pagina1c1(),
                        ),
                      ),
                      child: const Text("Ver"),
                    ),
                  ),
                ),
                // Tarjeta para película 2
                Card(
                  margin: const EdgeInsets.all(10),
                  elevation: 5,
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(10),
                    title: Text("Interstellar", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      "Año: 2014\nGénero: Aventura, Ciencia Ficción\nUn grupo de astronautas viaja a través de un agujero negro en busca de un nuevo hogar para la humanidad. La película explora el amor, el sacrificio y la supervivencia a medida que los límites del tiempo y el espacio se rompen.",
                      style: const TextStyle(fontSize: 14),
                    ),
                    leading: Image.network(
                      'https://es.web.img3.acsta.net/pictures/14/10/02/11/07/341344.jpg', // Ejemplo de imagen
                      width: 100,
                      height: 150,
                      fit: BoxFit.contain, // La imagen siempre visible y no recortada
                    ),
                    trailing: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Pagina2c1(),
                        ),
                      ),
                      child: const Text("Ver"),
                    ),
                  ),
                ),
                // Tarjeta para película 3
                Card(
                  margin: const EdgeInsets.all(10),
                  elevation: 5,
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(10),
                    title: Text("Blade Runner 2049", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      "Año: 2017\nGénero: Aventura, Ciencia Ficción\nEn un futuro distópico, el oficial K de la policía encuentra un misterio antiguo que podría cambiar el destino de la humanidad. La película se adentra en cuestiones filosóficas sobre la vida, la identidad y la tecnología.",
                      style: const TextStyle(fontSize: 14),
                    ),
                    leading: Image.network(
                      'https://m.media-amazon.com/images/M/MV5BNzA1Njg4NzYxOV5BMl5BanBnXkFtZTgwODk5NjU3MzI@._V1_.jpg', // Ejemplo de imagen
                      width: 100,
                      height: 150,
                      fit: BoxFit.contain, // Se asegura que la imagen se vea completa
                    ),
                    trailing: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Pagina3c1(),
                        ),
                      ),
                      child: const Text("Ver"),
                    ),
                  ),
                ),
                // Tarjeta para película 4
                Card(
                  margin: const EdgeInsets.all(10),
                  elevation: 5,
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(10),
                    title: Text("Ready Player One", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      "Año: 2018\nGénero: Aventura, Ciencia Ficción\nEn un futuro cercano, Wade Watts, un joven soñador, participa en una caza del tesoro virtual dentro del mundo de OASIS, que le llevará a cuestionar la realidad, el dinero y la verdadera naturaleza del poder.",
                      style: const TextStyle(fontSize: 14),
                    ),
                    leading: Image.network(
                      'https://es.web.img3.acsta.net/pictures/18/02/14/12/20/1230467.jpg', // Ejemplo de imagen
                      width: 100,
                      height: 150,
                      fit: BoxFit.contain, // Asegura que la imagen se vea completa
                    ),
                    trailing: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Pagina4c1(),
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
