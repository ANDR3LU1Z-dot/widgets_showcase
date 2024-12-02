import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: VitrineScreen(),
    );
  }
}

class VitrineScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Vitrine de Widgets')),
      body: Center(  // Centraliza tudo na tela
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: Text('Botão Elevado', style: TextStyle(fontSize: 18, color: Colors.white)),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,  // Mudando a cor do botão
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),  // Bordas arredondadas
                boxShadow: [
                  BoxShadow(blurRadius: 8, color: Colors.black26, offset: Offset(0, 4)),
                ],
              ),
              child: Text(
                'Caixa de Texto em Container',
                style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 20),
            Icon(
              Icons.star,
              color: Colors.amber,
              size: 60,  // Aumentei o tamanho do ícone
            ),
            SizedBox(height: 20),
            Text(
              'Texto Adicional',
              style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic, color: Colors.blueAccent),
            ),
            SizedBox(height: 20),
            FloatingActionButton(
              onPressed: () {},
              child: Icon(Icons.add, color: Colors.white),
              backgroundColor: Colors.green,  // Cor de fundo do botão
            ),
          ],
        ),
      ),
    );
  }
}
