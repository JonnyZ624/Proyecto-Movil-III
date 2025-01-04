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
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("Películas de Caricaturas"),
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
                    title: Text("Toy Story 4", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      "Año: 2019\nGénero: Aventura, Comedia, Animación\nWoody y Buzz Lightyear deben embarcarse en una aventura para encontrar a Forky, el juguete de Bonnie que ha cobrado vida, mientras enfrentan nuevas situaciones y amenazas. La película explora la lealtad, la identidad y el crecimiento.",
                      style: const TextStyle(fontSize: 14),
                    ),
                    leading: Image.network(
                      'https://m.media-amazon.com/images/M/MV5BMTYzMDM4NzkxOV5BMl5BanBnXkFtZTgwNzM1Mzg2NzM@._V1_FMjpg_UX1000_.jpg', // Ejemplo de imagen
                      width: 100,
                      height: 150,
                      fit: BoxFit.contain, // Asegura que la imagen se vea completa
                    ),
                    trailing: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Pagina1ca(),
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
                    title: Text("Frozen 2", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      "Año: 2019\nGénero: Aventura, Fantasía, Animación\nElsa y Anna, junto con Olaf, Kristoff y Sven, emprenden un viaje hacia el norte para descubrir los orígenes de los poderes de Elsa. La película explora el vínculo familiar y el autodescubrimiento.",
                      style: const TextStyle(fontSize: 14),
                    ),
                    leading: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSNbm28EZhooHofMhqRbjqYXm58jMZo87-n1A&s', // Ejemplo de imagen
                      width: 100,
                      height: 150,
                      fit: BoxFit.contain, // Mantiene la imagen intacta
                    ),
                    trailing: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Pagina2ca(),
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
                    title: Text("The Incredibles 2", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      "Año: 2018\nGénero: Aventura, Acción, Animación\nLa familia Parr se enfrenta a nuevos retos cuando Helen se convierte en la cara pública de la lucha contra el crimen, mientras que Bob (Mr. Increíble) se queda en casa para cuidar a los niños. La película trata de equilibrio familiar, acción y superpoderes.",
                      style: const TextStyle(fontSize: 14),
                    ),
                    leading: Image.network(
                      'https://m.media-amazon.com/images/M/MV5BMTEzNzY0OTg0NTdeQTJeQWpwZ15BbWU4MDU3OTg3MjUz._V1_FMjpg_UX1000_.jpg', // Ejemplo de imagen
                      width: 100,
                      height: 150,
                      fit: BoxFit.contain, // La imagen no se recorta
                    ),
                    trailing: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Pagina3ca(),
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
                    title: Text("Shrek 2", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      "Año: 2004\nGénero: Aventura, Comedia, Animación\nShrek y Fiona recién casados deben enfrentarse a los padres de Fiona, lo que lleva a una serie de situaciones cómicas y malentendidos. La película combina humor con temas de aceptación personal.",
                      style: const TextStyle(fontSize: 14),
                    ),
                    leading: Image.network(
                      'https://m.media-amazon.com/images/M/MV5BMzNmNjQ1NmUtNzhiZS00YWE2LTg4N2ItZTA2ODdmOTMwOTQ1XkEyXkFqcGc@._V1_.jpg', // Ejemplo de imagen
                      width: 100,
                      height: 150,
                      fit: BoxFit.contain, // La imagen no se recorta
                    ),
                    trailing: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Pagina4ca(),
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
