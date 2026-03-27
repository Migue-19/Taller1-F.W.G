import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String titulo = "Hola, Flutter";

  void cambiarTitulo() {
    setState(() {
      titulo = titulo == "Hola, Flutter"
          ? "¡Título cambiado!"
          : "Hola, Flutter";
    });

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("Título actualizado")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titulo),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          // 🟢 Container (widget adicional)
          Container(
            padding: EdgeInsets.all(10),
            color: Colors.green[100],
            child: Text("Bienvenido a mi app"),
          ),

          SizedBox(height: 20),

          // 👤 Nombre
          Text(
            "Miguel angel ruiz urmendis",
            style: TextStyle(fontSize: 20),
          ),

          SizedBox(height: 20),

          // 🖼️ Imágenes
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                'https://picsum.photos/200',
                width: 100,
              ),
              SizedBox(width: 10),
              Image.asset(
                'assets/chica.png',
                width: 100,
              ),
               SizedBox(width: 10),
               Image.asset(
                'assets/leon.png',
               width: 100,
               ),
            ],
          ),

          SizedBox(height: 20),

          // 🔘 Botón con setState
          ElevatedButton(
            onPressed: cambiarTitulo,
            child: Text("Cambiar título"),
          ),

          SizedBox(height: 20),

          // 📋 ListView (widget adicional)
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("Elemento 1"),
                ),
                ListTile(
                  leading: Icon(Icons.star),
                  title: Text("Elemento 2"),
                ),
                ListTile(
                  leading: Icon(Icons.favorite),
                  title: Text("Elemento 3"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}