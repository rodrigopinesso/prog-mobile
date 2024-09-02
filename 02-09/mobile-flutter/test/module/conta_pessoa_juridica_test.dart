import 'package:flutter_test/flutter_test.dart';
import 'package:aplicacaobancaria/models/conta_pessoa_juridica.dart';

void main() {
  test('Depósito em ContaPessoaJuridica', () {
    final contaPJ = ContaPessoaJuridica('54321', '12.345.678/0001-99', 10000.0);
    contaPJ.depositar(5000.0);
    expect(contaPJ.saldo, 15000.0);
  });

  test('Saque em ContaPessoaJuridica', () {
    final contaPJ = ContaPessoaJuridica('54321', '12.345.678/0001-99', 10000.0);
    contaPJ.sacar(2000.0);
    expect(contaPJ.saldo, 8000.0);
  });

  test('Saque acima do saldo em ContaPessoaJuridica', () {
    final contaPJ = ContaPessoaJuridica('54321', '12.345.678/0001-99', 10000.0);
    expect(() => contaPJ.sacar(20000.0), throwsException);
  });
}
