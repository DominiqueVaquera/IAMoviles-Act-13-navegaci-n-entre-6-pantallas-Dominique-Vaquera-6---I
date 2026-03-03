import 'package:flutter/material.dart';

class PaginaDos extends StatelessWidget {
  const PaginaDos({super.key});

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
              'Animales',
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
              _tarjetaAnimal('Lobos', 'https://raw.githubusercontent.com/DominiqueVaquera/Imagenes/refs/heads/main/l.webp', Colors.grey.shade300),
              const SizedBox(height: 20),
              _tarjetaAnimal('Tigres', 'https://raw.githubusercontent.com/DominiqueVaquera/Imagenes/refs/heads/main/t.jpg', const Color.fromARGB(255, 243, 172, 64)),
              const SizedBox(height: 20),
              _tarjetaAnimal('Pandas', 'https://raw.githubusercontent.com/DominiqueVaquera/Imagenes/refs/heads/main/p.jpg', Colors.lightGreen.shade200),
              const SizedBox(height: 20),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red.shade200,
                  foregroundColor: Colors.black,
                  minimumSize: const Size(250, 40),
                  shape: const BeveledRectangleBorder(),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('volver'),
              ),
               const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _tarjetaAnimal(String nombre, String url, Color color) {
    return Container(
      width: 300,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.black, width: 2),
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
          const Divider(
            height: 0,
            thickness: 2,
            color: Colors.black,
          ),
          Image.network(
            url,
            width: 300,
            height: 150,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Container(
                height: 150,
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
