import 'dart:developer';

import 'package:get/get.dart';
import 'package:stacked/stacked.dart';
import 'package:stock_sample/views/dashboard/models/ledger.dart';
import 'package:stock_sample/views/dashboard/models/trades.dart';
import 'package:stock_sample/views/graph_detail/graph_detail_view.dart';
import 'package:stock_sample/views/graph_detail/service/graph_detail_service.dart';

import '../graph_detail/models/chart_historical.dart';
import 'models/fund_limit.dart';
import 'models/postion.dart';
import 'service/dashboard_service.dart';

class DashboardViewModel extends BaseViewModel {
  final service = DashboardService();
  // final gservice = GraphDetailService();

  DashboardViewModel() {
    loadItems();
  }

  // @muttable
  List<Ledger> ledgers = [];
  List<Trades> trades = [];
  List<Postion> postion = [];

  FundLimit? fundLimit;
  double investPrice = 0.0;
  double currentPrice = 0.0;
  double plValue = 0.0;

  // Add ViewModel specific code here
  Future<void> loadItems() async {
    setBusy(true);
    // ledgers = await service.getLedger();
    trades = await service.getTrades();
    fundLimit = await service.getFundLimit();
    postion = await service.getPostion();

    investPrice = investCalutator();
    currentPrice = currentCalutator();
    setBusy(false);
    notifyListeners();
    log(postion.toString());
    log(trades.toString());
    log(fundLimit.toString());
  }

  double investCalutator() {
    List<double> tra = trades.map((e) => e.transactionType == "BUY" ? e.tradedPrice!.toDouble() : 0.0).toList();
    double value = tra.reduce((value, element) => value + element);
    return value;
  }

  double currentCalutator() {
    List<double> tra = trades.map((e) => e.tradedPrice!.toDouble()).toList();
    double value = tra.reduce((value, element) => value + element);
    return value;
  }

  void closeAllHandler() {}

  void singlestockHandler(Trades trade) {
    log(trade.toString());
    Get.to(() => GraphDetailView(obj: trade));
  }

  // void startRealTimeApi() async {
  //   try {
  //     while (true) {
  //       ChartHistorical? chartIntraday = await service.postChartIntraday('${obj!.securityId}');
  //       chartIntrday.add(chartIntraday!);
  //       await Future.delayed(const Duration(seconds: 2));
  //     }
  //   } catch (e) {
  //     log('Error: $e');
  //   }
  // }
}
