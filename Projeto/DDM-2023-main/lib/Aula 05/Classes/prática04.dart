class OverClock {
  acessarBios() {
    // ...
  }
  acessarAbaMemoriaRAM() {
    // ...
  }
  aumentarFrequencia() {
    // ...
  }
  testar() {
    // ...
  }
}

class Marca {
  final String nome;
  final String descricao;
  Marca({required this.nome, required this.descricao});
}

class Fabricante {
  final String nome;
  final String descricao;
  Fabricante({required this.nome, required this.descricao});
}

class Memoria {
  final String nome;
  final Marca marca;
  final int velocidade;
  final int capacidade;
  final Function overClock;
  Memoria(
      {required this.nome,
      required this.marca,
      required this.velocidade,
      required this.capacidade,
      required this.overClock});
}

class Processador {
  final String nome;
  final Marca marca;
  final int frequencia;
  final int nucleos;
  final int thread;
  final String geracao;
  Processador(
      {required this.nome,
      required this.marca,
      required this.frequencia,
      required this.nucleos,
      required this.thread,
      required this.geracao});
}

class PlacaDeVideo {
  final String modelo;
  final Marca marca;
  final int vRAM;
  final Fabricante fabricante;
  PlacaDeVideo(
      {required this.modelo,
      required this.marca,
      required this.vRAM,
      required this.fabricante});
}

class Fonte {
  final Marca marca;
  final String selo;
  final Fabricante fabricante;
  final int watts;
  Fonte(
      {required this.marca,
      required this.selo,
      required this.fabricante,
      required this.watts});
}

class PlacaMae {
  final Marca marca;
  final String modelo;
  final String socket;
  final String tempo_garantia;
  PlacaMae(
      {required this.marca,
      required this.modelo,
      required this.socket,
      required this.tempo_garantia});
}

class Gabinete {
  final Marca marca;
  final String modelo;
  final String tamanho;
  Gabinete({required this.marca, required this.modelo, required this.tamanho});
}

class Computador {
  final Gabinete gabinete;
  final PlacaDeVideo placaDeVideo;
  final PlacaMae placaMae;
  final Fonte fonte;
  final Processador processador;
  final Memoria memoria;
  Computador(
      {required this.gabinete,
      required this.placaDeVideo,
      required this.placaMae,
      required this.fonte,
      required this.processador,
      required this.memoria});
}

void main(List<String> arguments) {
  /*
  Crie e altere as classes complementares com atributos que julgar necessário
  - diferente dos colegas
  - defina métodos criativos e funcionais

  Objetivo final é criar um objeto do tipo computador!!!
  */
  print(
      '${Memoria(nome: 'Memória Kingston Fury Beast', marca: Marca(nome: 'Kingston', descricao: 'Kingston Corporation'), overClock: () {
            var overClock = OverClock();
            overClock.acessarBios();
            overClock.acessarAbaMemoriaRAM();
            overClock.aumentarFrequencia();
            overClock.testar();
          }, capacidade: 8, velocidade: 3200)}');
}
