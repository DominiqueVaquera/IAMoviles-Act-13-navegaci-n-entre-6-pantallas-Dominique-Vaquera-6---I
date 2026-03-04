import 'package:flutter/material.dart';

class PaginaSeis extends StatelessWidget {
  const PaginaSeis({super.key});

  @override
  Widget build(BuildContext context) {
    const double defaultTextSize = 18.0;
    const FontWeight defaultFontWeight = FontWeight.w500;

    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.green.shade200,
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: const Column(
                children: [
                  Text(
                    'Sebastian',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                  Text(
                    'Lara',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        const SizedBox(height: 10),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2),
                          ),
                          child: Image.network(
                            'https://raw.githubusercontent.com/DominiqueVaquera/Imagenes/refs/heads/main/c3.jpg',
                            height: 200,
                            width: 300,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                height: 200,
                                width: 300,
                                color: Colors.grey[300],
                                child: const Center(child: Text('Error al cargar imagen')),
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 24),
                        const Text(
                          'En que sucursal trabaja:',
                          style: TextStyle(fontSize: defaultTextSize, fontWeight: defaultFontWeight),
                        ),
                        const SizedBox(height: 12),
                        _buildInfoCard('Av. Avena', Colors.yellow.shade200),
                        const SizedBox(height: 24),
                        const Text(
                          'Cuida los animales:',
                          style: TextStyle(fontSize: defaultTextSize, fontWeight: defaultFontWeight),
                        ),
                        const SizedBox(height: 12),
                        _buildInfoCard('Lobos', Colors.grey.shade300),
                        const SizedBox(height: 30),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red.shade200,
                            foregroundColor: const Color.fromARGB(255, 0, 0, 0),
                            shape: const BeveledRectangleBorder(),
                            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text(
                            'Atrás',
                            style: TextStyle(fontSize: defaultTextSize, fontWeight: defaultFontWeight),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoCard(String text, Color color) {
    return Container(
      width: 250,
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: const TextStyle(
          fontSize: 18.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
