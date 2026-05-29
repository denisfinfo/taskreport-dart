import 'class.dart';

double converterValor(dynamic v) => v == null ? 0.0 : (double.tryParse(v.toString()
.replaceAll('R\$', '').replaceAll(' ', '').replaceAll(',','.')) ?? 0.0);
int converterHoras(dynamic h) => h == null ? 0 : (int.tryParse(h.toString()) ?? 0);

Tarefa converterMapParaTarefa(Map<String, dynamic> item) => Tarefa(
  id: item['id'] ?? 0,
  titulo: item['titulo']?.toString().trim() ?? 'Sem título',
  responsavel: item['responsavel']?.toString().trim() ?? 'Não informado',
  status: item['status']?.toString().trim() ?? 'sem status',
  prioridade: item['prioridade']?.toString().trim() ?? 'sem prioridade',
  valor: converterValor(item['valor']),
  horas: converterHoras(item['horas']),
);