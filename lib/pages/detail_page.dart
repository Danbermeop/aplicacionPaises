import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String pais;

  const DetailPage({super.key, required this.pais});

  String getEscudo() {
    switch (pais) {
      case 'Ecuador':
        return 'assets/ecuador_escudo.png';
      case 'Perú':
        return 'assets/peru_escudo.png';
      case 'Colombia':
        return 'assets/colombia_escudo.png';
      default:
        return 'assets/default.png';
    }
  }

  String getBandera() {
    switch (pais) {
      case 'Ecuador':
        return 'assets/ecuador_bandera.png';
      case 'Perú':
        return 'assets/peru_bandera.png';
      case 'Colombia':
        return 'assets/colombia_bandera.png';
      default:
        return 'assets/default.png';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pais),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Column(
        children: [
          // ESCUDO - Ahora ocupa todo el ancho
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                getEscudo(),
                width: double.infinity, // Ocupa todo el ancho disponible
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) => 
                  const Center(child: Icon(Icons.error_outline, size: 50)),
              ),
            ),
          ),
          // BANDERA - Ahora ocupa todo el ancho
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset(
                getBandera(),
                width: double.infinity, // Ocupa todo el ancho disponible
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) => 
                  const Center(child: Icon(Icons.error_outline, size: 50)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}