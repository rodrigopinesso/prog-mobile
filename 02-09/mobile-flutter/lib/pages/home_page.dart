import 'package:flutter/material.dart';
import 'package:aplicacaobancaria/models/conta_pessoa_fisica.dart';
import 'package:aplicacaobancaria/models/conta_pessoa_juridica.dart';

class HomePage extends StatelessWidget {
  final ContaPessoaFisica contaCorrente = ContaPessoaFisica('12345', '111.222.333-44', 4000.0);
  final ContaPessoaFisica poupanca = ContaPessoaFisica('67890', '111.222.333-44', 15000.0);
  final ContaPessoaJuridica cartaoCredito = ContaPessoaJuridica('54321', '12.345.678/0001-99', 2000.0);

  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contas Bancárias'),
      ),
      body: Center(
        child: ListView(
          padding: EdgeInsets.all(8.0),
          children: <Widget>[
            Card(
              child: ListTile(
                title: Text('Conta Corrente'),
                subtitle: Text('Saldo: R\$ ${contaCorrente.saldo.toStringAsFixed(2)}'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Poupança'),
                subtitle: Text('Saldo: R\$ ${poupanca.saldo}'),
              ),
            ),
            Card(
              child: ListTile(
                title: Text('Cartão de Crédito'),
                subtitle: Text('Limite disponível: R\$ ${cartaoCredito.saldo.toStringAsFixed(2)}'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
