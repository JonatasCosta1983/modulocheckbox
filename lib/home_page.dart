import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _dia01Janairo = false;
  bool _dia02Janairo = false;
  bool _dia03Janairo = false;
  bool _dia04Janairo = false;
  bool _dia05Janairo = false;
  bool _dia06Janairo = false;
  bool _dia07Janairo = false;
  bool _dia08Janairo = false;
  bool _dia09Janairo = false;

  _salvarDialido() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setBool('Dia1', _dia01Janairo);
    prefs.setBool('Dia2', _dia02Janairo);
    prefs.setBool('Dia3', _dia03Janairo);
    prefs.setBool('Dia4', _dia04Janairo);
    prefs.setBool('Dia5', _dia05Janairo);
    prefs.setBool('Dia6', _dia06Janairo);
    prefs.setBool('Dia7', _dia07Janairo);
    prefs.setBool('Dia8', _dia08Janairo);
    prefs.setBool('Dia9', _dia09Janairo);
  }

  _recuperarDialido() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      _dia01Janairo = (prefs.getBool('Dia1')) ?? false;
      _dia02Janairo = (prefs.getBool('Dia2')) ?? false;
      _dia03Janairo = (prefs.getBool('Dia3')) ?? false;
      _dia04Janairo = (prefs.getBool('Dia4')) ?? false;
      _dia05Janairo = (prefs.getBool('Dia5')) ?? false;
      _dia06Janairo = (prefs.getBool('Dia6')) ?? false;
      _dia07Janairo = (prefs.getBool('Dia7')) ?? false;
      _dia08Janairo = (prefs.getBool('Dia8')) ?? false;
      _dia09Janairo = (prefs.getBool('Dia9')) ?? false;
    });
  }

  _todoslidos() {
    if (_dia01Janairo && _dia09Janairo == true) {
      setState(() {
        const snackBar = SnackBar(
          content: Text(
            '      Parabéns você leu o livro de Mateus!',
            style: TextStyle(fontSize: 20.00),
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    _recuperarDialido();
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
                  color: _dia01Janairo ? Colors.black : Colors.grey,
                  fontSize: 20.00),
            ),
            subtitle: Text(
              '1 | Mateus | 1-4',
              style: TextStyle(
                  color: _dia01Janairo ? Colors.black : Colors.grey,
                  fontSize: 20.00),
            ),
            activeColor: Colors.black,
            checkColor: Colors.white,
            value: _dia01Janairo,
            onChanged: (bool? dia1) {
              setState(() {
                _dia01Janairo = dia1!;
                _salvarDialido();
              });
            },
          ),
          CheckboxListTile(
            title: Text(
              'Dia | Livro | Capitulo',
              style: TextStyle(
                  color: _dia02Janairo ? Colors.black : Colors.grey,
                  fontSize: 20.0),
            ),
            subtitle: Text(
              '2 | Mateus | 5-7',
              style: TextStyle(
                color: _dia02Janairo ? Colors.black : Colors.grey,
                fontSize: 20.00,
              ),
            ),
            activeColor: Colors.black,
            checkColor: Colors.white,
            value: _dia02Janairo,
            onChanged: (bool? dia2) {
              setState(() {
                _dia02Janairo = dia2!;
                _salvarDialido();
              });
            },
          ),
          CheckboxListTile(
            title: Text(
              'Dia | Livro | Capitulo',
              style: TextStyle(
                  color: _dia03Janairo ? Colors.black : Colors.grey,
                  fontSize: 20.0),
            ),
            subtitle: Text(
              '3 | Mateus | 8-10',
              style: TextStyle(
                color: _dia03Janairo ? Colors.black : Colors.grey,
                fontSize: 20.00,
              ),
            ),
            activeColor: Colors.black,
            checkColor: Colors.white,
            value: _dia03Janairo,
            onChanged: (bool? dia3) {
              setState(() {
                _dia03Janairo = dia3!;
                _salvarDialido();
              });
            },
          ),
          CheckboxListTile(
            title: Text(
              'Dia | Livro | Capitulo',
              style: TextStyle(
                  color: _dia04Janairo ? Colors.black : Colors.grey,
                  fontSize: 20.0),
            ),
            subtitle: Text(
              '4 | Mateus | 11-13',
              style: TextStyle(
                color: _dia04Janairo ? Colors.black : Colors.grey,
                fontSize: 20.00,
              ),
            ),
            activeColor: Colors.black,
            checkColor: Colors.white,
            value: _dia04Janairo,
            onChanged: (bool? dia4) {
              setState(() {
                _dia04Janairo = dia4!;
                _salvarDialido();
              });
            },
          ),
          CheckboxListTile(
            title: Text(
              'Dia | Livro | Capitulo',
              style: TextStyle(
                  color: _dia05Janairo ? Colors.black : Colors.grey,
                  fontSize: 20.0),
            ),
            subtitle: Text(
              '5 | Mateus | 14-16',
              style: TextStyle(
                color: _dia05Janairo ? Colors.black : Colors.grey,
                fontSize: 20.00,
              ),
            ),
            activeColor: Colors.black,
            checkColor: Colors.white,
            value: _dia05Janairo,
            onChanged: (bool? dia5) {
              setState(() {
                _dia05Janairo = dia5!;
                _salvarDialido();
              });
            },
          ),
          CheckboxListTile(
            title: Text(
              'Dia | Livro | Capitulo',
              style: TextStyle(
                  color: _dia06Janairo ? Colors.black : Colors.grey,
                  fontSize: 20.0),
            ),
            subtitle: Text(
              '6 | Mateus | 17-19',
              style: TextStyle(
                color: _dia06Janairo ? Colors.black : Colors.grey,
                fontSize: 20.00,
              ),
            ),
            activeColor: Colors.black,
            checkColor: Colors.white,
            value: _dia06Janairo,
            onChanged: (bool? dia6) {
              setState(() {
                _dia06Janairo = dia6!;
                _salvarDialido();
              });
            },
          ),
          CheckboxListTile(
            title: Text(
              'Dia | Livro | Capitulo',
              style: TextStyle(
                  color: _dia07Janairo ? Colors.black : Colors.grey,
                  fontSize: 20.0),
            ),
            subtitle: Text(
              '7 | Mateus | 17-19',
              style: TextStyle(
                color: _dia07Janairo ? Colors.black : Colors.grey,
                fontSize: 20.00,
              ),
            ),
            activeColor: Colors.black,
            checkColor: Colors.white,
            value: _dia07Janairo,
            onChanged: (bool? dia7) {
              setState(() {
                _dia07Janairo = dia7!;
                _salvarDialido();
              });
            },
          ),
          CheckboxListTile(
            title: Text(
              'Dia | Livro | Capitulo',
              style: TextStyle(
                  color: _dia08Janairo ? Colors.black : Colors.grey,
                  fontSize: 20.0),
            ),
            subtitle: Text(
              '8 | Mateus | 23-25',
              style: TextStyle(
                color: _dia08Janairo ? Colors.black : Colors.grey,
                fontSize: 20.00,
              ),
            ),
            activeColor: Colors.black,
            checkColor: Colors.white,
            value: _dia08Janairo,
            onChanged: (bool? dia8) {
              setState(() {
                _dia08Janairo = dia8!;
                _salvarDialido();
              });
            },
          ),
          CheckboxListTile(
            title: Text(
              'Dia | Livro | Capitulo',
              style: TextStyle(
                  color: _dia09Janairo ? Colors.black : Colors.grey,
                  fontSize: 20.0),
            ),
            subtitle: Text(
              '9 | Mateus | 26-28',
              style: TextStyle(
                color: _dia09Janairo ? Colors.black : Colors.grey,
                fontSize: 20.00,
              ),
            ),
            activeColor: Colors.black,
            checkColor: Colors.white,
            value: _dia09Janairo,
            onChanged: (bool? dia9) {
              setState(() {
                _dia09Janairo = dia9!;
                _salvarDialido();
                _todoslidos();
              });
            },
          )
        ],
      ),
    );
  }
}
