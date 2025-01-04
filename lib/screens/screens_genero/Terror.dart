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
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("Películas de Terror "),
          ),
          const SizedBox(height: 20),

          // Lista de tarjetas de películas
          Expanded(
            child: ListView(
              children: [
                // Tarjeta para Insidious
                Card(
                  margin: const EdgeInsets.all(10),
                  elevation: 5,
                  child: ListTile(
                    contentPadding: const EdgeInsets.all(10),
                    title: Text("Insidious", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      "Año: 2010\nGénero: Terror, Sobrenatural\nUna familia se ve atrapada en una serie de sucesos extraños y aterradores que parecen estar conectados a su hijo comatoso.",
                      style: const TextStyle(fontSize: 14),
                    ),
                    leading: Image.network(
                      'https://es.web.img3.acsta.net/pictures/14/05/07/09/01/306626.jpg', // Imagen de ejemplo
                      width: 100,
                      height: 150,
                      fit: BoxFit.contain, // Asegura que la imagen se vea completa
                    ),
                    trailing: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Pagina1t(),
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
                    title: Text("Hereditary", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      "Año: 2018\nGénero: Terror, Drama\nUna familia se enfrenta a terribles revelaciones sobre sus ancestros y una maldición oscura que los persigue.",
                      style: const TextStyle(fontSize: 14),
                    ),
                    leading: Image.network(
                      'https://m.media-amazon.com/images/M/MV5BMzI3MjNmYzItZmE5Yi00ODZhLThjNTAtYjU3MmExMGY3MWU0XkEyXkFqcGc@._V1_.jpg', // Imagen de ejemplo
                      width: 100,
                      height: 150,
                      fit: BoxFit.contain, // Asegura que la imagen se vea completa
                    ),
                    trailing: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Pagina2t(),
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
                    title: Text("The Conjuring", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      "Año: 2013\nGénero: Terror, Sobrenatural\nBasada en hechos reales, sigue a dos investigadores paranormales mientras ayudan a una familia aterrorizada por una entidad maligna.",
                      style: const TextStyle(fontSize: 14),
                    ),
                    leading: Image.network(
                      'https://m.media-amazon.com/images/M/MV5BMTM3NjA1NDMyMV5BMl5BanBnXkFtZTcwMDQzNDMzOQ@@._V1_FMjpg_UX1000_.jpg', // Imagen de ejemplo
                      width: 100,
                      height: 150,
                      fit: BoxFit.contain, // Asegura que la imagen se vea completa
                    ),
                    trailing: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Pagina3t(),
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
                    title: Text("A Quiet Place", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      "Año: 2018\nGénero: Terror, Suspense\nUna familia debe vivir en silencio absoluto mientras luchan por sobrevivir a criaturas que cazan por el sonido.",
                      style: const TextStyle(fontSize: 14),
                    ),
                    leading: Image.network(
                      'https://m.media-amazon.com/images/M/MV5BMjI0MDMzNTQ0M15BMl5BanBnXkFtZTgwMTM5NzM3NDM@._V1_.jpg', // Imagen de ejemplo
                      width: 100,
                      height: 150,
                      fit: BoxFit.contain, // Asegura que la imagen se vea completa
                    ),
                    trailing: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Pagina4t(),
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
