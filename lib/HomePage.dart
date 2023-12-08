import 'package:flutter/material.dart';
import 'package:flutter_application_1/NotaFiscal.dart';
import 'package:flutter_application_1/main.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int pontos = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF2F3B8E),
      appBar: AppBar(
        backgroundColor: Color(0xFF060A39),
        title: Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Image.asset(
            'assets/Marca.png',
            height: 200,
            width: 200,
          ),
        ),
        elevation: 0,
      ),
      drawer: Drawer(
        child: Container(
          height: 30,
          width: 50,
          color: Color(0xFF2F3B83), // Cor de fundo do menu lateral
          child: ListView(
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFF060A39),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Image.asset(
                        'assets/Icon.png',
                        height: 350,
                        width: 250,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text(
                  'Página Inicial',
                  style: TextStyle(color: Colors.white), // Cor do texto
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text(
                  'Perfil',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text(
                  'Resgatar Saldo',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text(
                  'Adicionar Nota Fiscal',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text(
                  'Contatar o Suporte',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text(
                  'Configurações',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text(
                  'Sair',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  Navigator.pop(context); // Fecha o Drawer
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyLoginPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: 18.0),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              'assets/Marca2.png',
              height: 170,
              width: 400,
            ),
          ),
          Center(
            child: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                border: Border.all(
                  color: Color(0xFFFB83B1),
                  width: 2.0,
                ),
              ),
              child: Center(
                child: Text(
                  pontos.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 70.0),
          Divider(
            color: Color(0xFFFB83B1),
            thickness: 1.5,
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 4.0), 
                child: Text(
                  'Clique aqui para adicionar uma Nota Fiscal',
                  style: TextStyle(color: Colors.white, fontSize: 17.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 6.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => NotaFiscal()),
                        );
                  },
                  style:ElevatedButton.styleFrom(
                    primary: Color(0xFFA509A8),
                    onPrimary: Colors.white,
                    side: BorderSide(color: Color(0xFF060A39), width: 3.0)
                  ),
                  child: Text(' +  Nota Fiscal',
                    style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Divider(
            color: Color(0xFFFB83B1),
            thickness: 1.5,
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 4.0), 
                child: Text(
                  'Clique aqui para trocar seus pontos por Saldo',
                  style: TextStyle(color: Colors.white, fontSize: 17.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 6.0),
                child: ElevatedButton(
                  onPressed: () {
                  },
                  style:ElevatedButton.styleFrom(
                    primary: Color(0xFFA509A8),
                    onPrimary: Colors.white,
                    side: BorderSide(color: Color(0xFF060A39), width: 3.0)
                  ),
                  child: Text('Resgatar Pontos',
                    style: TextStyle(fontWeight: FontWeight.bold),),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          Divider(
            color: Color(0xFFFB83B1),
            thickness: 1.5,
          ),
        ],
      ),
    );
  }
}