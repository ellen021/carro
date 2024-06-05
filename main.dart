class Carro {
  String cor;
  String modelo;
  int ano;
  int velocidadeAtual;

  Carro({
    required this.cor,
    required this.modelo,
    required this.ano,
    this.velocidadeAtual = 0,
  });

  void acelerar() {
    velocidadeAtual += 80;
    print("Acelerando... Velocidade atual: $velocidadeAtual km/h");
  }

  void frear() {
    velocidadeAtual -= 10;
    if (velocidadeAtual < 0) {
      velocidadeAtual = 0;
    }
    print("Freando... Velocidade atual: $velocidadeAtual km/h");
  }

  void buzinar() {
    print("Buzinando!");
  }
}

void main() {
  var meuCarro = Carro(
    cor: 'Preto',
    modelo: 'Civic g10',
    ano: 2022,
  );

  print("Meu carro: ${meuCarro.modelo} ${meuCarro.ano} - Cor: ${meuCarro.cor}");

  meuCarro.acelerar();
  meuCarro.acelerar();
  meuCarro.frear();
  meuCarro.buzinar();
}
