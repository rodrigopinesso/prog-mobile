import 'package:flutter/material.dart';

class MoedasPages extends StatelessWidget {
  const MoedasPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cripto Moedas'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8),
        children: [
          Card(
            child: ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text('Bitcoin'),
              subtitle: Text('BTC - \$29,000'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text('Ethereum'),
              subtitle: Text('ETH - \$1,800'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text('Ripple'),
              subtitle: Text('XRP - \$0.70'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text('Litecoin'),
              subtitle: Text('LTC - \$90'),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text('Cardano'),
              subtitle: Text('ADA - \$0.30'),
            ),
          ),
        ],
      ),
    );
  }
}
