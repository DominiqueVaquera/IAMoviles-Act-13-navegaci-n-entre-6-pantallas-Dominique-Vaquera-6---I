import 'package:flutter/material.dart';

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
            Text('Ver', style: TextStyle(color: Colors.white, fontSize: 18)),
            Text(
              'Sucursales',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 14),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              // Tarjeta 1
              _tarjetaSucursal('Av. Avena', 'https://raw.githubusercontent.com/DominiqueVaquera/Imagenes/main/avena.jpg', Colors.yellow.shade100),
              const SizedBox(height: 20),
              // Tarjeta 2
              _tarjetaSucursal('Av. Nueva Zelanda', 'https://raw.githubusercontent.com/DominiqueVaquera/Imagenes/main/pi%C3%B1a.jpg', Colors.blue.shade100),
              const SizedBox(height: 20),
              // Tarjeta 3
              _tarjetaSucursal('Av. Piña', 'https://raw.githubusercontent.com/DominiqueVaquera/Imagenes/main/zelanda.jpg', Colors.pink.shade100),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade200,
                  minimumSize: const Size(150, 30), // Ancho y alto del botón
                  shape: const BeveledRectangleBorder(),
                  foregroundColor: Colors.black, // Color del texto
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/segunda');
                },
                child: const Text('Ir a Pantalla 2'),
              ),
              const SizedBox(height: 5),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade200,
                  minimumSize: const Size(150, 30), // Ancho y alto del botón
                  shape: const BeveledRectangleBorder(),
                  foregroundColor: Colors.black, // Color del texto
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/tercera');
                },
                child: const Text('Ir a Pantalla 3'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Función simplificada para crear el contenedor rectangular
  Widget _tarjetaSucursal(String nombre, String url, Color color) {
    return Container(
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
          // Imagen de internet
          Image.network(
            url,
            width: 350,
            height: 100,
            fit: BoxFit.cover, // Correcto: BoxFit
            // Si la imagen falla, muestra un texto en lugar de un error rojo
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
    );
  }
}
