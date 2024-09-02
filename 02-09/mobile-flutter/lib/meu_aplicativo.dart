import 'package:flutter/material.dart';
import 'pages/criar_nova_conta.dart';
import 'pages/listagem_contas.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Conta> contas = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplicação Bancária'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                final novaConta = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CriarNovaContaPage(),
                  ),
                );

                if (novaConta != null) {
                  setState(() {
                    contas.add(novaConta);
                  });
                }
              },
              child: Text('Criar Nova Conta'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ListaContasPage(contas: contas),
                  ),
                );
              },
              child: Text('Ver Minhas Contas'),
            ),
          ],
        ),
      ),
    );
  }
}
