import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _primeiroDiaLido = false;
  bool _segundoDiaLido = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plano de Leitura anual'),
      ),
      body: Column(
        children: [
          CheckboxListTile(
            title: const Text(
              'Dia | Livro | Capitulo',
              style: TextStyle(
                fontSize: 20.00,
                color: Colors.grey,
              ),
            ),
            subtitle: const Text(
              '1 | Mateus| 1-4',
              style: TextStyle(
                fontSize: 15.00,
                color: Colors.grey,
              ),
            ),
            activeColor: Colors.black,
            checkColor: Colors.white,
            value: _primeiroDiaLido,
            onChanged: (bool? dia1) {
              setState(() {
                _primeiroDiaLido = dia1!;
              });
            },
          ),
          CheckboxListTile(
            title: const Text('Dia | Livro | Capitulo'),
            subtitle: const Text('2 | Matheus | 5-7 '),
            value: _segundoDiaLido,
            onChanged: (bool? dia2) {
              setState(() {
                _segundoDiaLido = dia2!;
              });
            },
          )
        ],
      ),
    );
  }
}
