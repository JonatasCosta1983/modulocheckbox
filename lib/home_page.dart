import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _primeiroDiaLido = false;
  bool _segundoDiaLido = false;

  _todoslidos() {
    if (_primeiroDiaLido && _segundoDiaLido == true) {
      setState(() {
        const snackBar = SnackBar(
          content: Text(
            '      Parabéns você leu sete capitulos!',
            style: TextStyle(fontSize: 20.00),
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Plano de leitura Anual'),
      ),
      body: Column(
        children: [
          CheckboxListTile(
            title: Text(
              'Dia | Livro | Capitulo',
              style: TextStyle(
                  color: _primeiroDiaLido ? Colors.black : Colors.grey,
                  fontSize: 20.00),
            ),
            subtitle: Text(
              '1 | Mateus | 1-4',
              style: TextStyle(
                  color: _primeiroDiaLido ? Colors.black : Colors.grey,
                  fontSize: 20.00),
            ),
            activeColor: Colors.black,
            checkColor: Colors.white,
            value: _primeiroDiaLido,
            onChanged: (bool? dia1) {
              setState(() {
                _primeiroDiaLido = dia1!;
                _todoslidos();
              });
            },
          ),
          CheckboxListTile(
            title: Text(
              'Dia | Livro | Capitulo',
              style: TextStyle(
                  color: _segundoDiaLido ? Colors.black : Colors.grey,
                  fontSize: 20.0),
            ),
            subtitle: Text(
              '2 | Mateus | 5-7',
              style: TextStyle(
                color: _segundoDiaLido ? Colors.black : Colors.grey,
                fontSize: 20.00,
              ),
            ),
            activeColor: Colors.black,
            checkColor: Colors.white,
            value: _segundoDiaLido,
            onChanged: (bool? dia2) {
              setState(() {
                _segundoDiaLido = dia2!;
                _todoslidos();
              });
            },
          )
        ],
      ),
    );
  }
}
