import 'package:flutter/material.dart';

import 'criar_nova_conta.dart';

class ListaContasPage extends StatelessWidget {
  final List<Conta> contas;

  const ListaContasPage({Key? key, required this.contas}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minhas Contas'),
      ),
      body: ListView.builder(
        itemCount: contas.length,
        itemBuilder: (context, index) {
          final conta = contas[index];
          return ListTile(
            title: Text('Conta ${index + 1}'),
            subtitle: Text('Detalhes da conta ${conta.nome}'),
          );
        },
      ),
    );
  }
}
