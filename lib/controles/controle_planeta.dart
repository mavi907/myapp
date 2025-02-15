dart
import 'package:flutter/material.dart';
import '../models/planeta.dart';
import '../utils/rotas.dart';

class ControlePlaneta with ChangeNotifier {
  final List<Planeta> _itens = [];

  List<Planeta> get itens => [..._itens];

  int get itensCount {
    return _itens.length;
  }

  void addPlaneta(Planeta planeta) {
    _itens.add(planeta);
    notifyListeners();
  }

  Planeta itemByIndex(int index) {
    return _itens.elementAt(index);
  }

  void atualizarPlaneta(Planeta planeta, int index) {
    _itens[index] = planeta;
    notifyListeners();
  }

  void removerPlaneta(int index) {
    _itens.removeAt(index);
    notifyListeners();
  }

  Future<void> abrirCadastroPlaneta(BuildContext context,
      {Planeta? planeta, int? index}) async {
    await Navigator.of(context)
        .pushNamed(AppRotas.cadastroPlaneta, arguments: {
      'planeta': planeta,
      'index': index,
    });
  }
}

