import 'package:flutter/material.dart';
import 'package:gatos_top/gato_aleatorio.dart';
import 'package:gatos_top/gato_tag.dart';
class MenuLateral extends StatefulWidget {
  const MenuLateral({super.key});

  @override
  State<MenuLateral> createState() => _MenuLateralState();
}

class _MenuLateralState extends State<MenuLateral> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gaticos Top'),
        backgroundColor:const Color.fromARGB(255, 134, 8, 165),
      ),
      body: const GatoAleatorio(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:<Widget> [
            const DrawerHeader(
              decoration: BoxDecoration (
                color: Color.fromARGB(255, 179, 89, 177),
              ),
              child: Text(
                'Gaticos.tops',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
            ListTile(
              leading:const Icon(Icons.abc),
              title:const Text('Gatos Aleatorios') ,
               onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>const GatoTag())
                  );
              },
            ),
             ListTile(
              leading:const Icon(Icons.account_circle),
              title:const Text('Categoria de Gatos'),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>const GatoTag())
                  );
              },
            ),
            ListTile(
              leading:const Icon(Icons.settings),
              title:const Text('Campo Texto'),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>const GatoTag())
                  );
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Radio Button'),
              onTap: (){
                Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>const GatoTag())
                  );
              },
            ),
          ],
        ),
      ),
    );
  }
}