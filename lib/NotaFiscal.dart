import 'package:flutter/material.dart';

void main() {
  runApp(NotaFiscal());
}

class NotaFiscal extends StatelessWidget {
  const NotaFiscal({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pontos e Transporte Público',
      theme: ThemeData(
        primaryColor: const Color(0xFF00AAEE),
        scaffoldBackgroundColor: const Color(0xFF2E1B5B),
        hintColor: const Color(0xFF2F3B8E),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const PointsHomePage(),
    );
  }
}

class PointsHomePage extends StatefulWidget {
  const PointsHomePage({Key? key}) : super(key: key);

  @override
  _PointsHomePageState createState() => _PointsHomePageState();
}

class _PointsHomePageState extends State<PointsHomePage> {
  int totalPoints = 0;
  int numberOfReceipts = 0;

  void addReceipt() {
    setState(() {
      numberOfReceipts++;
      if (numberOfReceipts % 5 == 0) {
        totalPoints++;
      }
    });
  }

  void _showAddReceiptDialog(BuildContext context) {
  TextEditingController numberController = TextEditingController();
  TextEditingController valueController = TextEditingController();
  TextEditingController dateController = TextEditingController();

  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Incluir Nota Fiscal'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: numberController,
              decoration: const InputDecoration(labelText: 'Número da nota'),
            ),
            TextField(
              controller: valueController,
              decoration: const InputDecoration(labelText: 'Valor da nota'),
              keyboardType: TextInputType.numberWithOptions(decimal: true),
            ),
            TextField(
              controller: dateController,
              decoration: const InputDecoration(labelText: 'Data de compra'),
              keyboardType: TextInputType.datetime,
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2000),
                  lastDate: DateTime.now(),
                );
                if (pickedDate != null) {
                  dateController.text = pickedDate.toString();
                }
              },
            ),
          ],
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              double value = double.tryParse(valueController.text) ?? 0.0;
              int pointsToAdd = (value / 15).floor();
              totalPoints += pointsToAdd; // Adiciona os pontos
              setState(() {}); // Atualiza a interface após adicionar os pontos
              Navigator.pop(context);
            },
            child: const Text('Adicionar'),
          ),
        ],
      );
    },
  );
}


  void _showMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      backgroundColor: Color.fromARGB(0, 255, 255, 255),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (BuildContext context) {
        return Container(
          width: MediaQuery.of(context).size.width * 1, // Define a largura como metade da tela
          decoration: const BoxDecoration(
            color: Color(0xFF2F3B8E),
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ListTile(
                title: const Text(
                  'Meu cartão de Transporte',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Implementar ação para 'Quanto tomei'
                  Navigator.pop(context); // Fecha o menu antes de navegar
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const QuantoTomeiScreen()),
                  );
                },
              ),
              ListTile(
                title: const Text(
                  'Meus Dados',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Implementar ação para 'Meus Dados'
                  Navigator.pop(context); // Fecha o menu
                },
              ),
              const Divider(), // Divisor
              ListTile(
                title: const Text(
                  'Sair',
                  style: TextStyle(color: Colors.white),
                ),
                onTap: () {
                  // Implementar ação para 'Sair'
                  Navigator.pop(context); // Fecha o menu
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      backgroundColor: Color(0xFF2F3B8E),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Pontos: $totalPoints' ,
              style: const TextStyle(color: Colors.white, fontSize: 35),
            ),
            const SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                _showAddReceiptDialog(context);
                totalPoints++; // Incrementa imediatamente ao abrir o diálogo
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF1FA5FF),
              ),
              child: const Text(
                'Adicionar Nota Fiscal',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showMenu(context);
        },
        backgroundColor: const Color(0xFFFB83B1),
        child: const Icon(Icons.train),
      ),
    );
  }
}

class QuantoTomeiScreen extends StatelessWidget {
  const QuantoTomeiScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      backgroundColor: Color(0xFF2F3B8E),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/Cartao.png',
              height: 320,
              width: 320,
            ),
            Text(
              'Cartão de Transporte',
              style: TextStyle(color: Colors.white, fontSize: 35),
            ),
          ],
        ),
      ),
    );
  }
}