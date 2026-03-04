import 'package:flutter/material.dart';
import 'package:myapp/mispantallas/pantalla6.dart';

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
        automaticallyImplyLeading: false,
        backgroundColor: Colors.green.shade300,
        centerTitle: true,
        title: const Column(
          children: [
            Text('Ver', style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontSize: 18)),
            Text(
              'Cuidadores de',
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.normal, fontSize: 14),
            ),
            Text(
              'animales',
              style: TextStyle(color: Color.fromARGB(255, 0, 0, 0), fontWeight: FontWeight.normal, fontSize: 14),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 20),
              ...cuidadores.map((nombre) => _cuidadorCard(nombre, context)),
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

  Widget _cuidadorCard(String nombre, BuildContext context) {
    final isSebastian = nombre == "Sebastian Lara";

    final card = Container(
      width: 200,
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 2),
        color: isSebastian ? const Color.fromARGB(255, 255, 255, 255) : Colors.transparent,
      ),
      child: Text(
        nombre,
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
      ),
    );

    if (isSebastian) {
      return GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const PaginaSeis()),
          );
        },
        child: card,
      );
    }

    return card;
  }
}
