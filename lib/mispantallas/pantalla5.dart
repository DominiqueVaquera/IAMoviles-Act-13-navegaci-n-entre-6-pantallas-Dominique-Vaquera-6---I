import 'package:flutter/material.dart';

class PaginaCinco extends StatelessWidget {
  const PaginaCinco({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.green.shade200,
                border: Border.all(color: Colors.black, width: 2),
              ),
              child: const Text(
                'Lobos',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 20, 0, 0),
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Center(
                  child: Column(
                    children: [
                      const SizedBox(height: 20),
                      Image.network(
                        'https://raw.githubusercontent.com/DominiqueVaquera/Imagenes/refs/heads/main/l.webp',
                        height: 250,
                        width: double.infinity,
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            height: 250,
                            color: Colors.grey[300],
                            child: const Center(child: Text('Error al cargar imagen')),
                          );
                        },
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'Sucursales',
                        style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8),
                      const Text(
                        'donde se encuentra:',
                        style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 0, 0, 0)),
                      ),
                      const SizedBox(height: 16),
                      _buildLocationCard('Av. Avena', Colors.brown.shade100),
                      const SizedBox(height: 12),
                      _buildLocationCard('Av. Piña', Colors.yellow.shade200),
                      const SizedBox(height: 24),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: _buildLocationCard('Atrás', Colors.red.shade200, textColor: const Color.fromARGB(255, 0, 0, 0)),
                      ),
                      const SizedBox(height: 24),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLocationCard(String location, Color color, {Color textColor = Colors.black}) {
    return Container(
      width: 300,
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Text(
        location,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: textColor,
        ),
      ),
    );
  }
}
