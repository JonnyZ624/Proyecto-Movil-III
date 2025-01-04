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
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("Películas de Comedia"),
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
                    title: Text("Superbad", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      "Año: 2007\nGénero: Comedia\nDos adolescentes, Seth y Evan, intentan ganar el respeto de sus compañeros de clase organizando una fiesta alocada. Todo sale mal mientras intentan comprar alcohol, pero la experiencia les enseña lecciones sobre la amistad y el futuro.",
                      style: const TextStyle(fontSize: 14),
                    ),
                    leading: Image.network(
                      'https://m.media-amazon.com/images/M/MV5BNjk0MzdlZGEtNTRkOC00ZDRiLWJkYjAtMzUzYTRiNzk1YTViXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', // Imagen de ejemplo
                      width: 100,
                      height: 150,
                      fit: BoxFit.contain, // Asegura que la imagen se vea completa
                    ),
                    trailing: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Pagina1co(),
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
                    title: Text("The Hangover", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      "Año: 2009\nGénero: Comedia\nTres amigos deben averiguar cómo ocurrieron los eventos de una noche loca en Las Vegas, donde se despiertan con amnesia, una historia incompleta, y sin recordar cómo su amigo se casó.",
                      style: const TextStyle(fontSize: 14),
                    ),
                    leading: Image.network(
                      'https://m.media-amazon.com/images/M/MV5BNDI2MzBhNzgtOWYyOS00NDM2LWE0OGYtOGQ0M2FjMTI2NTllXkEyXkFqcGc@._V1_.jpg', // Imagen de ejemplo
                      width: 100,
                      height: 150,
                      fit: BoxFit.contain, // Asegura que la imagen se vea completa
                    ),
                    trailing: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Pagina2co(),
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
                    title: Text("21 Jump Street", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      "Año: 2012\nGénero: Comedia\nDos jóvenes policías, interpretados por Jonah Hill y Channing Tatum, son enviados de vuelta al instituto para resolver un caso relacionado con drogas. Los problemas surgen cuando deben enfrentarse tanto al crimen como a su adolescencia.",
                      style: const TextStyle(fontSize: 14),
                    ),
                    leading: Image.network(
                      'https://m.media-amazon.com/images/M/MV5BMTg2NjJiODctM2IyMS00MmQ5LWI1YmQtNTBjMTI4M2U2YzA5XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg', // Imagen de ejemplo
                      width: 100,
                      height: 150,
                      fit: BoxFit.contain, // Asegura que la imagen se vea completa
                    ),
                    trailing: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Pagina3co(),
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
                    title: Text("Crazy, Stupid, Love.", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      "Año: 2011\nGénero: Comedia, Romance\nTras un inesperado divorcio, Cal Weaver busca ayuda para entender el mundo moderno del romance. Con la guía de un joven mujeriego, se convierte en un hombre renovado mientras enfrenta su complicada vida amorosa.",
                      style: const TextStyle(fontSize: 14),
                    ),
                    leading: Image.network(
                      'https://m.media-amazon.com/images/M/MV5BMTg2MjkwMTM0NF5BMl5BanBnXkFtZTcwMzc4NDg2NQ@@._V1_FMjpg_UX1000_.jpg', // Imagen de ejemplo
                      width: 100,
                      height: 150,
                      fit: BoxFit.contain, // Asegura que la imagen se vea completa
                    ),
                    trailing: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Pagina4co(),
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
