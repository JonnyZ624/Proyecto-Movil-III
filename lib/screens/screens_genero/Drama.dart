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
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("Películas de Drama"),
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
                    title: Text("The Shawshank Redemption", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      "Año: 1994\nGénero: Drama\nAndy Dufresne, un hombre condenado por un crimen que no cometió, lucha por sobrevivir en prisión mientras busca la esperanza a través de la amistad y la redención.",
                      style: const TextStyle(fontSize: 14),
                    ),
                    leading: Image.network(
                      'https://m.media-amazon.com/images/M/MV5BMDAyY2FhYjctNDc5OS00MDNlLThiMGUtY2UxYWVkNGY2ZjljXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', // Imagen de ejemplo
                      width: 100,
                      height: 150,
                      fit: BoxFit.contain, // Asegura que la imagen se vea completa
                    ),
                    trailing: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Pagina1dra(),
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
                    title: Text("Forrest Gump", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      "Año: 1994\nGénero: Drama\nForrest Gump es un hombre de baja inteligencia pero grandes logros que, a través de una vida llena de sorpresas y altibajos, muestra que cualquiera puede hacer una diferencia.",
                      style: const TextStyle(fontSize: 14),
                    ),
                    leading: Image.network(
                      'https://m.media-amazon.com/images/M/MV5BNDYwNzVjMTItZmU5YS00YjQ5LTljYjgtMjY2NDVmYWMyNWFmXkEyXkFqcGc@._V1_.jpg', // Imagen de ejemplo
                      width: 100,
                      height: 150,
                      fit: BoxFit.contain, // Asegura que la imagen se vea completa
                    ),
                    trailing: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Pagina2dra(),
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
                    title: Text("The Godfather", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      "Año: 1972\nGénero: Drama, Crimen\nLa saga de la familia Corleone y su incursión en el crimen organizado en América, centrada en la relación del patriarca Vito Corleone y su hijo Michael.",
                      style: const TextStyle(fontSize: 14),
                    ),
                    leading: Image.network(
                      'https://m.media-amazon.com/images/M/MV5BYTJkNGQyZDgtZDQ0NC00MDM0LWEzZWQtYzUzZDEwMDljZWNjXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', // Imagen de ejemplo
                      width: 100,
                      height: 150,
                      fit: BoxFit.contain, // Asegura que la imagen se vea completa
                    ),
                    trailing: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Pagina3dra(),
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
                    title: Text("Schindler's List", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      "Año: 1993\nGénero: Drama, Historia\nDurante la Segunda Guerra Mundial, un empresario alemán, Oskar Schindler, salva a miles de judíos del Holocausto gracias a su influencia y fortaleza de carácter.",
                      style: const TextStyle(fontSize: 14),
                    ),
                    leading: Image.network(
                      'https://m.media-amazon.com/images/M/MV5BNjM1ZDQxYWUtMzQyZS00MTE1LWJmZGYtNGUyNTdlYjM3ZmVmXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', // Imagen de ejemplo
                      width: 100,
                      height: 150,
                      fit: BoxFit.contain, // Asegura que la imagen se vea completa
                    ),
                    trailing: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Pagina4dra(),
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
