class Professor {
  int? SIAPE; //1.1
  String? nome;
  String? CPF;
  DateTime? nascimento; //atributo privado
  DateTime? dataEntrada;
  String? email;
  Function funcaoPrintaNome;

  Professor(
      { //CONSTRUTOR NOMEADO 1.3
      required this.SIAPE,
      required this.nome,
      required this.CPF,
      required this.nascimento,
      required this.dataEntrada,
      this.email, //1.2 e 1.5
      required this.funcaoPrintaNome});

  @override
  String toString() {
    return 'SIAPE: ${SIAPE}, Nome: ${nome}, CPF: ${CPF}, Nascimento ${nascimento}, Data de Entrada ${dataEntrada}, Email ${email}';
  }
}
