void calcularSalarioFGTS() {
  double salarioContratual = 2500.00;
  int cargaHorariaSemanal = 44;
  double horasExtras = 200.00;
  double adicionalNoturno = 100.00;
  double adicionalPericulosidade = 0;
  double adicionalInsalubridade = 0;
  double valeTransporte = 150.00;
  int mesesTrabalhados = 12;

  double salarioBase =
      (salarioContratual / 4) / (cargaHorariaSemanal.toDouble() * 5);
  double salarioBruto = salarioBase +
      horasExtras +
      adicionalNoturno +
      adicionalPericulosidade +
      adicionalInsalubridade;
  double descontos = salarioBruto * 0.11 +
      (salarioBruto - valeTransporte) * tabelaIRRF(salarioBruto) +
      valeTransporte;
  double salarioFinal = salarioBruto - descontos;
  double valorFGTS = salarioBase * 0.08;

  print("Salário líquido: R\$ $salarioFinal");
  print("Valor do FGTS: R\$ $valorFGTS");
}

void calcularImpostoRenda() {
  double salarioBruto = 4000.00;
  double descontoINSS = inss(salarioBruto);
  double baseCalculo = salarioBruto - descontoINSS;
  double aliquota = tabelaIRRF(baseCalculo);
  double impostoDevido = baseCalculo * aliquota;

  print("Imposto de renda devido: R\$ $impostoDevido");
}

void calcularSalarioLiquido(
    double salarioContratual,
    int cargaHorariaSemanal,
    double horasExtras,
    double adicionalNoturno,
    double adicionalPericulosidade,
    double adicionalInsalubridade,
    double valeTransporte,
    int mesesTrabalhados) {
  double salarioBase =
      (salarioContratual / 4) / (cargaHorariaSemanal.toDouble() * 5);
  double salarioBruto = salarioBase +
      horasExtras +
      adicionalNoturno +
      adicionalPericulosidade +
      adicionalInsalubridade;
  double descontos = salarioBruto * 0.11 +
      (salarioBruto - valeTransporte) * tabelaIRRF(salarioBruto) +
      valeTransporte;
  double salarioFinal = salarioBruto - descontos;

  print("Salário líquido: R\$ $salarioFinal");
}

void calcularHoraExtra(double salarioBase, double horaTrabalhada) {
  double horaExtra = horaTrabalhada * 1.5;
  double salarioHoraExtra = salarioBase + horaExtra;

  print("Salário com hora extra: R\$ $salarioHoraExtra");
}

double tabelaIRRF(double salarioBruto) {
  if (salarioBruto <= 1903.98) {
    return 0;
  } else if (salarioBruto <= 2826.65) {
    return 0.075;
  } else if (salarioBruto <= 3751.05) {
    return 0.15;
  } else if (salarioBruto <= 4664.68) {
    return 0.225;
  } else {
    return 0.275;
  }
}

double inss(double salarioBruto) {
  if (salarioBruto <= 1100.00) {
    return salarioBruto * 0.075;
  } else if (salarioBruto <= 2203.48) {
    return salarioBruto * 0.09;
  } else if (salarioBruto <= 3305.22) {
    return salarioBruto * 0.12;
  } else if (salarioBruto <= 6433.57) {
    return salarioBruto * 0.14;
  } else {
    return 751.99;
  }
}

double calcularSalarioBruto() {
  double salarioContratual = 3500;
  int cargaHorariaSemanal = 44;
  double valorHora = salarioContratual / (cargaHorariaSemanal * 4.0);

  int horasTrabalhadas =
      220; // considerando um mês com 22 dias úteis e 8 horas trabalhadas por dia
  double salarioBase = horasTrabalhadas * valorHora;

  double horasExtras = 10;
  double adicionalNoturno = 0;
  double adicionalPericulosidade = 0;
  double adicionalInsalubridade = 0;
  double valeTransporte = salarioContratual * 0.06;

  double salarioBruto = salarioBase +
      horasExtras +
      adicionalNoturno +
      adicionalPericulosidade +
      adicionalInsalubridade +
      valeTransporte;

  return salarioBruto;
}

double calcularDescontoINSS() {
  double salarioBruto = calcularSalarioBruto();

  if (salarioBruto <= 1100) {
    return salarioBruto * 0.075;
  } else if (salarioBruto <= 2203.48) {
    return salarioBruto * 0.09 - 16.50;
  } else if (salarioBruto <= 3305.22) {
    return salarioBruto * 0.12 - 82.61;
  } else if (salarioBruto <= 6433.57) {
    return salarioBruto * 0.14 - 148.71;
  } else {
    return 751.99;
  }
}

double calcularValorHoraExtra(double valorHora, int horasExtras) {
  double valorHoraExtra = valorHora * 1.5;
  return valorHoraExtra * horasExtras;
}

double calcularDescontoIRPF(double salarioBruto, double dependentes) {
  double baseCalculo = salarioBruto - (dependentes * 189.59);

  if (baseCalculo <= 1903.98) {
    return 0;
  } else if (baseCalculo <= 2826.65) {
    return (baseCalculo * 0.075) - 142.80;
  } else if (baseCalculo <= 3751.05) {
    return (baseCalculo * 0.15) - 354.80;
  } else if (baseCalculo <= 4664.68) {
    return (baseCalculo * 0.225) - 636.13;
  } else {
    return (baseCalculo * 0.275) - 869.36;
  }
}

//double calcularSalarioLiquido(double salarioBruto, {double descontoINSS = 0, double descontoIRPF = 0}) {
//  double salarioBase = salarioBruto - descontoINSS - descontoIRPF;
//  double descontoTotal = calcularDescontoTotal(descontoINSS, descontoIRPF);
//  double salarioLiquido = salarioBase - descontoTotal;
//  return salarioLiquido;
//}

double calcularValorFerias(double salarioBruto,
    {double adicionalFerias = 0.33}) {
  double valorFerias = salarioBruto + (salarioBruto * adicionalFerias);
  return valorFerias;
}


//double calcularSalarioLiquido({required double salarioBruto, double descontoINSS = 0, double descontoIRPF = 0}) {
//  double salarioBase = salarioBruto - descontoINSS - descontoIRPF;
//  double descontoTotal = calcularDescontoTotal(descontoINSS, descontoIRPF);
//  double salarioLiquido = salarioBase - descontoTotal;
//  return salarioLiquido;}

//double calcularValorFerias({required double salarioBruto, double adicionalFerias = 0.33}) {
//  double valorFerias = salarioBruto + (salarioBruto * adicionalFerias);
//  return valorFerias;}






