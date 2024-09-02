import 'package:flutter_test/flutter_test.dart';
import 'package:aplicacaobancaria/models/conta_pessoa_fisica.dart';

void main() {
  test('Depósito em ContaPessoaFisica', () {
    final contaPF = ContaPessoaFisica('12345', '111.222.333-44', 1000.0);
    contaPF.depositar(500.0);
    expect(contaPF.saldo, 1500.0);
  });

  test('Saque em ContaPessoaFisica', () {
    final contaPF = ContaPessoaFisica('12345', '111.222.333-44', 1000.0);
    contaPF.sacar(400.0);
    expect(contaPF.saldo, 600.0);
  });

  test('Saque acima do saldo em ContaPessoaFisica', () {
    final contaPF = ContaPessoaFisica('12345', '111.222.333-44', 1000.0);
    expect(() => contaPF.sacar(2000.0), throwsException);
  });
}
