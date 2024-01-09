import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stock_sample/views/dashboard/models/trades.dart';

import 'models/chart_historical.dart';
import 'service/graph_detail_service.dart';

class GraphDetailViewModel extends BaseViewModel {
  final Trades? obj;
  final service = GraphDetailService();

  // @muttable
  ChartHistorical? chart;
  double lowest = 0.0;
  double highest = 0.0;
  TextEditingController valueController = TextEditingController();

  GraphDetailViewModel(this.obj) {
    loadItems();
    valueController.addListener(() {
      notifyListeners();
    });
  }

  // Add ViewModel specific code here
  Future<void> loadItems() async {
    setBusy(true);
    if (obj != null) {
      chart = await service.postChartHistorical('${obj!.tradingSymbol}');
    }
    lowest = lowestCalculate();
    highest = highestCalculate();
    setBusy(false);
    notifyListeners();
  }

  double highestCalculate() {
    double highestValue = chart!.high!.reduce((max, current) => max > current ? max : current);
    log(highestValue.toString());
    return highestValue;
  }

  double lowestCalculate() {
    double lowestValue = chart!.low!.reduce((lowest, current) => lowest < current ? lowest : current);
    log(lowestValue.toString());
    return lowestValue;
  }

  void buyStockHanlder() {}

  void sellStockHanlder() {}
}
