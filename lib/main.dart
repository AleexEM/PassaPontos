import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomePage.dart';
import 'package:flutter_application_1/Cadastro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyLoginPage(),
    );
  }
}

class MyLoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<MyLoginPage> {
  TextEditingController cpfController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF060A39), // Adiciona a cor à AppBar
        elevation: 0,
        title: Row(
          children: [
            Image.asset(
              'assets/Marca.png',
              height: 180,
              width: 200,
            )
          ],
        ),
      ),
      backgroundColor: Color(0xFF060A39), // Adiciona a cor ao fundo da tela
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Center(
            child:Flexible(
              child: Image.asset(
                'assets/LogoTipo.png',
                height: 240,
                width: 250,
              ),
            ),
          ),
          SizedBox(height: 50.0),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 16.0),
                TextField(
                  controller: cpfController,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                    labelText: 'CPF',
                    labelStyle: TextStyle(color: Colors.white), // Cor do texto da label
                    filled: true,
                    fillColor: Color(0xFF2F3B8E), // Cor de fundo
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFF0092)), // Borda quando está focado
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFF0092)), // Borda quando não está focado
                    ),
                  ),
                ),
                SizedBox(height: 16.0),
                TextField(
                  controller: passwordController,
                  obscureText: true,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    ),
                  decoration: InputDecoration(
                    labelText: 'Senha',
                    labelStyle: TextStyle(color: Colors.white), // Cor do texto da label
                    filled: true,
                    fillColor: Color(0xFF2F3B8E), // Cor de fundo
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFF0092)), // Borda quando está focado
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFFFF0092)), // Borda quando não está focado
                    ),
                  ),
                ),
                SizedBox(height: 32.0),
                Row(
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        String cpf = cpfController.text;
                        String password = passwordController.text;
                        print('CPF: $cpf, Senha: $password');
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => MyHomePage()),
                        );
                      },
                      child: Text('ENTRAR'),
                    ),
                    SizedBox(width: 20.0), // Adiciona um espaço horizontal
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => SignUpPage()),
                        );
                      },
                      child: Text('CADASTRE-SE'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}