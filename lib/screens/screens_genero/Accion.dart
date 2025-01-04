import 'package:flutter/material.dart';
import 'package:proyecto_moviles_3/screens/screens_accion/pagina1a.dart';
import 'package:proyecto_moviles_3/screens/screens_accion/pagina2a.dart';
import 'package:proyecto_moviles_3/screens/screens_accion/pagina3a.dart';
import 'package:proyecto_moviles_3/screens/screens_accion/pagina4a.dart';

class Accion extends StatelessWidget {
  const Accion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text("Películas de Acción"),
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
                    title: Text("Mad Max: Fury Road", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      "Año: 2015\nGénero: Acción, Aventura\nEl mundo ha sido devastado por una guerra nuclear, y Max, un hombre solitario, se ve atrapado en una lucha mortal por sobrevivir junto a Imperator Furiosa. Juntos, deben escapar de un tirano en un frenético viaje por el desierto.",
                      style: const TextStyle(fontSize: 14),
                    ),
                    leading: Image.network(
                      'https://m.media-amazon.com/images/M/MV5BZDRkODJhOTgtOTc1OC00NTgzLTk4NjItNDgxZDY4YjlmNDY2XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg',
                      width: 100,
                      height: 150,
                      fit: BoxFit.contain, // Asegura que la imagen siempre se vea completa
                    ),
                    trailing: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Pagina1a(),
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
                    title: Text("The Dark Knight", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      "Año: 2008\nGénero: Acción, Crimen\nBatman se enfrenta al Joker, un villano psicópata que busca sumergir Gotham City en el caos. La película no solo explora las increíbles batallas físicas, sino que también plantea preguntas filosóficas sobre el bien y el mal, así como el sacrificio personal.",
                      style: const TextStyle(fontSize: 14),
                    ),
                    leading: Image.network(
                      'https://m.media-amazon.com/images/M/MV5BMTMxNTMwODM0NF5BMl5BanBnXkFtZTcwODAyMTk2Mw@@._V1_FMjpg_UX1000_.jpg', 
                      width: 100,
                      height: 150,
                      fit: BoxFit.contain, // Mantiene la imagen completa
                    ),
                    trailing: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Pagina2a(),
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
                    title: Text("Avengers: Endgame", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      "Año: 2019\nGénero: Acción, Aventura, Ciencia Ficción\nDespués del trágico chasquido de Thanos, los Vengadores restantes se embarcan en una misión final para reunir las Gemas del Infinito y revertir la catástrofe. Esta épica culminación pone fin a una saga de diez años.",
                      style: const TextStyle(fontSize: 14),
                    ),
                    leading: Image.network(
                      'https://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_FMjpg_UX1000_.jpg', 
                      width: 100,
                      height: 150,
                      fit: BoxFit.contain, // Garantiza que la imagen no se corte
                    ),
                    trailing: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Pagina3a(),
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
                    title: Text("John Wick", style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    subtitle: Text(
                      "Año: 2014\nGénero: Acción, Crimen, Thriller\nTras la muerte de su perro, un regalo de su esposa fallecida, John Wick, un ex asesino, se ve obligado a regresar a su antigua vida y vengar la muerte de su único compañero, enfrentándose a criminales despiadados.",
                      style: const TextStyle(fontSize: 14),
                    ),
                    leading: Image.network(
                      'https://m.media-amazon.com/images/M/MV5BY2Q2ZmI5ZjUtNWVhMC00YzJkLTlmYjMtY2RmZDhkNzEzYjZhXkEyXkFqcGc@._V1_.jpg', 
                      width: 100,
                      height: 150,
                      fit: BoxFit.contain, // Mantiene la imagen intacta
                    ),
                    trailing: ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Pagina4a(),
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
