import 'package:flutter/material.dart';
import 'detail_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  void _goToDetail(BuildContext context, String pais) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailPage(pais: pais),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Países')),
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => _goToDetail(context, 'Ecuador'),
              child: Container(
                color: Colors.red[200],
                child: const Center(
                  child: Text('Ecuador', style: TextStyle(fontSize: 24)),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => _goToDetail(context, 'Perú'),
              child: Container(
                color: Colors.green[200],
                child: const Center(
                  child: Text('Perú', style: TextStyle(fontSize: 24)),
                ),
              ),
            ),
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => _goToDetail(context, 'Colombia'),
              child: Container(
                color: Colors.yellow[200],
                child: const Center(
                  child: Text('Colombia', style: TextStyle(fontSize: 24)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}