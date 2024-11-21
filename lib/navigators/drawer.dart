import 'package:flutter/material.dart';
import 'package:proyecto_moviles_3/main.dart';
import 'package:proyecto_moviles_3/screens/Pantalla2.dart';

class MiDrawer extends StatelessWidget {
  const MiDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          ListTile(
            title: Text("Pantalla 1"),
            onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=>(MyApp()))),
          ),
          ListTile(
            tileColor: Colors.black26,
            title: Text("Pantalla 2"),
             onTap: ()=>Navigator.push(context, MaterialPageRoute(builder: (context)=> Pantalla2())),
          ),
          
        ],
      ),
    );
  }
}