import 'dart:async';
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
  TextEditingController valueController = TextEditingController();
  StreamController<ChartHistorical> chartIntrday = StreamController<ChartHistorical>();

  GraphDetailViewModel(this.obj) {
    loadItems();
    valueController.addListener(() => notifyListeners());
  }

  // Add ViewModel specific code here
  Future<void> loadItems() async {
    // setBusy(true);
    // setBusy(false);
    // notifyListeners();
  }

  void buyStockHanlder() async {
    final res = await service.postOrderPlace(
      "string", //  "dhanClientId": "string",
      "string", //  "correlationId": "string",
      "BUY", //  "transactionType": "BUY",
      "NSE_EQ", //  "exchangeSegment": "NSE_EQ",
      "CNC", //  "productType": "CNC",
      "LIMIT", //  "orderType": "LIMIT",
      "DAY", //  "validity": "DAY",
      "string", //  "tradingSymbol": "string",
      "string", //  "securityId": "string",
      -2147483648, //  "quantity": -2147483648,
      -2147483648, //  "disclosedQuantity": -2147483648,
      -3.402823669209385e+38, //  "price": -3.402823669209385e+38,
      -3.402823669209385e+38, //  "triggerPrice": -3.402823669209385e+38,
      true, //  "afterMarketOrder": true,
      "OPEN", //  "amoTime": "OPEN",
      -3.402823669209385e+38, //  "boProfitValue": -3.402823669209385e+38,
      -3.402823669209385e+38, //  "boStopLossValue": -3.402823669209385e+38,
      "string", //  "drvExpiryDate": "string",
      "CALL", //  "drvOptionType": "CALL",
      -3.402823669209385e+38, //  "drvStrikePrice": -3.402823669209385e+38
    );
    if (res != null) {
      log(res.toString());
      log(res.orderStatus.toString());
    }
  }

  void sellStockHanlder() async {
    final res = await service.postOrderPlace(
      "string", //  "dhanClientId": "string",
      "string", //  "correlationId": "string",
      "SELL", //  "transactionType": "BUY",
      "NSE_EQ", //  "exchangeSegment": "NSE_EQ",
      "CNC", //  "productType": "CNC",
      "LIMIT", //  "orderType": "LIMIT",
      "DAY", //  "validity": "DAY",
      "string", //  "tradingSymbol": "string",
      "string", //  "securityId": "string",
      -2147483648, //  "quantity": -2147483648,
      -2147483648, //  "disclosedQuantity": -2147483648,
      -3.402823669209385e+38, //  "price": -3.402823669209385e+38,
      -3.402823669209385e+38, //  "triggerPrice": -3.402823669209385e+38,
      true, //  "afterMarketOrder": true,
      "OPEN", //  "amoTime": "OPEN",
      -3.402823669209385e+38, //  "boProfitValue": -3.402823669209385e+38,
      -3.402823669209385e+38, //  "boStopLossValue": -3.402823669209385e+38,
      "string", //  "drvExpiryDate": "string",
      "CALL", //  "drvOptionType": "CALL",
      -3.402823669209385e+38, //  "drvStrikePrice": -3.402823669209385e+38
    );
    if (res != null) {
      log(res.toString());
      log(res.orderStatus.toString());
    }
  }

  void startRealTimeApi() async {
    try {
      while (true) {
        ChartHistorical? chartIntraday = await service.postChartIntraday('${obj!.securityId}');
        chartIntrday.add(chartIntraday!);
        await Future.delayed(const Duration(seconds: 2));
      }
    } catch (e) {
      log('Error: $e');
    }
  }
}
