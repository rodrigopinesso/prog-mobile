import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Aplicação Bancária',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BankHomePage(),
    );
  }
}

class BankHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Aplicação Bancária'),
      ),
      body: ListView(
        padding: EdgeInsets.all(8.0),
        children: [
          BankCard(
            bankName: 'Banco Exemplo 1',
            accountType: 'Conta Corrente',
            balance: 'R\$ 5.000,00',
          ),
          BankCard(
            bankName: 'Banco Exemplo 2',
            accountType: 'Conta Poupança',
            balance: 'R\$ 2.300,00',
          ),
          BankCard(
            bankName: 'Banco Exemplo 3',
            accountType: 'Conta Investimento',
            balance: 'R\$ 10.000,00',
          ),
        ],
      ),
    );
  }
}

class BankCard extends StatelessWidget {
  final String bankName;
  final String accountType;
  final String balance;

  BankCard({
    required this.bankName,
    required this.accountType,
    required this.balance,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        leading: Icon(Icons.account_balance, color: Colors.blue),
        title: Text(bankName),
        subtitle: Text(accountType),
        trailing: Text(balance, style: TextStyle(fontWeight: FontWeight.bold)),
      ),
    );
  }
}
