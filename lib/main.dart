import 'package:flutter/material.dart';

import 'package:proyecto_moviles_3/navigators/drawer.dart';
import 'package:proyecto_moviles_3/screens/Pantalla1.dart';
import 'package:proyecto_moviles_3/screens/Pantalla2.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Aplicacion",
      home: Cuerpo(),
    );
  }
}

class Cuerpo extends StatefulWidget {
  const Cuerpo({super.key});

  @override
  State<Cuerpo> createState() => _CuerpoState();
}

class _CuerpoState extends State<Cuerpo> {
  int indiceSeleccionado = 0;
  final List<Widget> paginas = [
    Center(child: Pantalla1()),
    Center(child: Pantalla2()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      

      drawer: MiDrawer(),
      body: paginas[indiceSeleccionado],

      bottomNavigationBar:  BottomNavigationBar(
        currentIndex: indiceSeleccionado,
        onTap: (value)=>{
          setState(() {
            indiceSeleccionado = value;
          })
        },
        
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home_filled),label: "Inicio "),
        BottomNavigationBarItem(icon: Icon(Icons.app_registration),label: "Registro")
      ],),
    );
  }
}


Widget boton1(context){
  return TextButton(onPressed: ()=>alerta1(context), child: Text("boton1"));
}

void alerta1(context){
  showDialog(context: context, builder: (BuildContext context){
     return AlertDialog(
      title: Text("Titulo de la alerta"),
      actions: [
        FilledButton(onPressed: ()=>Navigator.pop(context), child: Text("Cancelar"))
      ],
     );
  });
}

Widget pantalla2_btn(context){
  return ElevatedButton(onPressed: ()=>navegacion1(context), child: Text("Ir a pantalla 2"));
}

void navegacion1(context){
  Navigator.push(context, MaterialPageRoute(builder: (context)=> Pantalla2()));
}

