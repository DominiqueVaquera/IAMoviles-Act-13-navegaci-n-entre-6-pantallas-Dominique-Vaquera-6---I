import 'package:flutter/material.dart';
import 'package:myapp/mispantallas/pantalla2.dart';
import 'package:myapp/mispantallas/pantalla3.dart';
import 'package:myapp/mispantallas/pantalla4.dart';

class PaginaUno extends StatelessWidget {
  const PaginaUno({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        centerTitle: true,
        title: const Column(
          children: [
            Text('Menu', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 18)),
            Text(
              'Principal',
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.normal, fontSize: 14),
            ),
          ],
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle, color: Color.fromARGB(255, 0, 0, 0), size: 30),
            onPressed: () {
              // Acción para el icono de perfil
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              // Tarjeta 1
              _tarjeta(
                'Ver animales',
                Colors.yellow.shade100,
                context,
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PaginaDos()),
                  );
                },
                imageUrl: 'https://raw.githubusercontent.com/DominiqueVaquera/Imagenes/main/avena.jpg',
              ),
              const SizedBox(height: 20),
              // Tarjeta 2
              _tarjeta(
                'Ver sucursales',
                Colors.blue.shade100,
                context,
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PaginaCuatro()),
                  );
                },
              ),
              const SizedBox(height: 20),
              // Tarjeta 3
              _tarjeta(
                'Ver cuidadores',
                Colors.pink.shade100,
                context,
                () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const PaginaTres()),
                  );
                },
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  // Función simplificada para crear el contenedor rectangular
  Widget _tarjeta(String nombre, Color color, BuildContext context, VoidCallback onPressed, {String? imageUrl}) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: 350,
        decoration: BoxDecoration(
          color: color,
          border: Border.all(color: Colors.black, width: 2), // Borde rectangular recto
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                nombre,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            // Línea divisoria de lado a lado
            const Divider(
              height: 0,
              thickness: 2,
              color: Colors.black,
            ),
            if (imageUrl != null)
              Image.network(
                imageUrl,
                width: 350,
                height: 100,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Container(
                    height: 100,
                    color: Colors.grey[300],
                    child: const Center(child: Text('Error al cargar imagen')),
                  );
                },
              ),
          ],
        ),
      ),
    );
  }
}
