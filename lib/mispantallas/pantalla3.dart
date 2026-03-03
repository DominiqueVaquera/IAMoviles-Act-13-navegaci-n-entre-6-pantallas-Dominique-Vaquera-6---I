import 'package:flutter/material.dart';

class PaginaTres extends StatelessWidget {
  const PaginaTres({super.key});

  @override
  Widget build(BuildContext context) {
    final cuidadores = [
      "Sebastian Lara",
      "Angel Salinas",
      "Andrea Montoya",
      "Alex cancino",
      "Dario Rojas",
      "Nicolas Perales",
      "Cesar Loya",
      "Damian Gonzales",
      "Esteffani Nuñez",
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        centerTitle: true,
        title: const Column(
          children: [
            Text('Ver', style: TextStyle(color: Colors.white, fontSize: 18)),
            Text(
              'Cuidadores de',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.normal, fontSize: 14),
            ),
            Text(
              'animales',
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
              ...cuidadores.map((nombre) => _cuidadorCard(nombre)),
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

  Widget _cuidadorCard(String nombre) {
    return Container(
      width: 300,
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
      ),
      child: Text(
        nombre,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
    );
  }
}
