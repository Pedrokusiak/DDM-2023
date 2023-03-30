double salarioBase(double salarioContratual, int cargaHorariaSemanal) {
  return (salarioContratual / 4) / (cargaHorariaSemanal.toDouble() * 5);
}

double salarioBruto(
    double salarioBase,
    double horasExtras,
    double adicionalNoturno,
    double adicionalPericulosidade,
    double adicionalInsalubridade) {
  return salarioBase +
      horasExtras +
      adicionalNoturno +
      adicionalPericulosidade +
      adicionalInsalubridade;
}

double descontosLegais(double salarioBruto, double valeTransporte) {
  double descontoINSS = salarioBruto * 0.11; // alíquota de 11%
  double descontoIRRF =
      (salarioBruto - descontoINSS - valeTransporte) * tabelaIRRF(salarioBruto);
  return descontoINSS + descontoIRRF + valeTransporte;
}

//funcao para calcular o imposto de renda Retido na Fonte (IRRF):
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

double salarioLiquido(double salarioBruto, double descontosLegais) {
  return salarioBruto - descontosLegais;
}

//funcao para calcular as horas extras trabalhadas:
double calcularHorasExtras(double horasTrabalhadas, double valorHoraNormal,
    double percentualAcrescimo) {
  double valorHoraExtra = valorHoraNormal * (1 + percentualAcrescimo / 100);
  double valorHorasExtras = horasTrabalhadas * valorHoraExtra;
  return valorHorasExtras;
}

//funcao para calcular o valor do décimo terceiro salário:
double calcularDecimoTerceiro(double salarioBruto, int mesesTrabalhados) {
  double decimoTerceiro = salarioBruto * mesesTrabalhados / 12;
  return decimoTerceiro;
}

//funcao para calcular o valor das Ferias:
double ferias(double salarioBase, int mesesTrabalhados) {
  double adicionalFerias = salarioBase / 3;
  return (salarioBase + adicionalFerias) * (mesesTrabalhados / 12);
}

//funcao para calcular o valor do FGTS:para calcular o valor do FGTS:
double calcularFGTS(double salarioBruto) {
  double valorFGTS = salarioBruto * 0.08;
  return valorFGTS;
}

//funcao para calcular o valor do adicional noturno:
double calcularAdicionalNoturno(
    double horasTrabalhadasNoturnas, double valorHoraNormal) {
  double valorHoraNoturna = valorHoraNormal * 1.2;
  double valorAdicionalNoturno = horasTrabalhadasNoturnas * valorHoraNoturna;
  return valorAdicionalNoturno;
}

//funcao para calcular o valor do vale transporte:
double calcularValeTransporte(
    double valorTransporte, double percentualDescontoSalario) {
  double valorDesconto = valorTransporte * percentualDescontoSalario / 100;
  return valorDesconto;
}
