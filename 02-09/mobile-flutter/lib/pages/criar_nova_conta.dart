import 'package:flutter/material.dart';

class CriarNovaContaPage extends StatefulWidget {
  @override
  _CriarNovaContaPageState createState() => _CriarNovaContaPageState();
}

class _CriarNovaContaPageState extends State<CriarNovaContaPage> {
  final _formKey = GlobalKey<FormState>();
  final _nomeController = TextEditingController();
  final _tipoContaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criar Nova Conta'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nomeController,
                decoration: InputDecoration(labelText: 'Nome Completo'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o nome completo';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _tipoContaController,
                decoration: InputDecoration(labelText: 'Tipo de Conta'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira o tipo de conta';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    String nome = _nomeController.text;
                    String tipoConta = _tipoContaController.text;

                    // Cria uma nova conta e retorna para a tela anterior
                    Navigator.pop(context, Conta(nome: nome, tipo: tipoConta));
                  }
                },
                child: Text('Criar Conta'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Conta {
  String nome;
  String tipo;

  Conta({required this.nome, required this.tipo});
}
