import 'package:flutter/material.dart';
import 'package:flutter_application_1/HomePage.dart';

void main() {
  runApp(SignUpPage());
}

class SignUpPage extends StatelessWidget {
  TextEditingController nameController = TextEditingController();
  TextEditingController cpfController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController institutionController = TextEditingController();
  TextEditingController registrationNumberController = TextEditingController();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF060A39),
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
      backgroundColor: Color(0xFF060A39),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Cadastro',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start, // Alinhar à esquerda
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: nameController,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                ),
              decoration: InputDecoration(labelText: 'Nome Completo',
                labelStyle: TextStyle(color: Colors.white), // Cor do texto da label
                filled: true,
                fillColor: Color(0xFF2F3B8E), // Cor de fundo
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFFB83B1)), // Borda quando está focado
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFFB83B1)), // Borda quando não está focado
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: cpfController,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                ),
              decoration: InputDecoration(labelText: 'CPF',
                labelStyle: TextStyle(color: Colors.white), // Cor do texto da label
                filled: true,
                fillColor: Color(0xFF2F3B8E), // Cor de fundo
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFFB83B1)), // Borda quando está focado
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFFB83B1)), // Borda quando não está focado
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: addressController,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                ),
              decoration: InputDecoration(labelText: 'Endereço',
                labelStyle: TextStyle(color: Colors.white), // Cor do texto da label
                filled: true,
                fillColor: Color(0xFF2F3B8E), // Cor de fundo
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFFB83B1)), // Borda quando está focado
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFFB83B1)), // Borda quando não está focado
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: emailController,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                ),
              decoration: InputDecoration(labelText: 'E-mail',
                labelStyle: TextStyle(color: Colors.white), // Cor do texto da label
                filled: true,
                fillColor: Color(0xFF2F3B8E), // Cor de fundo
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFFB83B1)), // Borda quando está focado
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFFB83B1)), // Borda quando não está focado
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
                fontSize: 16.0,
                ),
              decoration: InputDecoration(labelText: 'Senha',
                labelStyle: TextStyle(color: Colors.white), // Cor do texto da label
                filled: true,
                fillColor: Color(0xFF2F3B8E), // Cor de fundo
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFFB83B1)), // Borda quando está focado
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFFB83B1)), // Borda quando não está focado
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: phoneController,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                ),
              decoration: InputDecoration(labelText: 'Telefone',
                labelStyle: TextStyle(color: Colors.white), // Cor do texto da label
                filled: true,
                fillColor: Color(0xFF2F3B8E), // Cor de fundo
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFFB83B1)), // Borda quando está focado
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFFB83B1)), // Borda quando não está focado
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: institutionController,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                ),
              decoration: InputDecoration(labelText: 'Instituição de Ensino',
                labelStyle: TextStyle(color: Colors.white), // Cor do texto da label
                filled: true,
                fillColor: Color(0xFF2F3B8E), // Cor de fundo
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFFB83B1)), // Borda quando está focado
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFFB83B1)), // Borda quando não está focado
                ),
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: registrationNumberController,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16.0,
                ),
              decoration: InputDecoration(labelText: 'Número de Matrícula',
                labelStyle: TextStyle(color: Colors.white), // Cor do texto da label
                filled: true,
                fillColor: Color(0xFF2F3B8E), // Cor de fundo
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFFB83B1)), // Borda quando está focado
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFFFB83B1)), // Borda quando não está focado
                ),
              ),
            ),  
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Adicione a lógica de criação de conta aqui
                String name = nameController.text;
                String email = emailController.text;
                String password = passwordController.text;
                print('Nome: $name, E-mail: $email, Senha: $password');
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyHomePage()),
                );
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(Color(0xFF1FA5FF)),
                textStyle: MaterialStateProperty.all(
                  TextStyle(fontSize: 16.0), // Ajuste o tamanho do texto aqui
                ),
                padding: MaterialStateProperty.all(
                  EdgeInsets.symmetric(vertical: 12.0),
                ),
                minimumSize: MaterialStateProperty.all(
                  Size(150.0, 20.0), // Largura mínima e altura mínima
                ),
                maximumSize: MaterialStateProperty.all(
                  Size(400.0, 50.0), // Largura máxima e altura máxima
                ),
              ),
              child: Text('CADASTRAR'),
            ),
          ],
        ),
      ),
    );
  }
}