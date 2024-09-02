abstract class ContaBancaria {
  String numeroConta;
  double saldo;

  ContaBancaria(this.numeroConta, this.saldo);

  void depositar(double valor) {
    saldo += valor;
  }

  void sacar(double valor) {
    if (valor <= saldo) {
      saldo -= valor;
    } else {
      throw Exception("Saldo insuficiente");
    }
  }

  void mostrarSaldo() {
    print("O saldo da conta $numeroConta é: R\$ $saldo");
  }
}
