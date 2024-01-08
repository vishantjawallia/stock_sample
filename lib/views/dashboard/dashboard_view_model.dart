import 'dart:developer';

import 'package:stacked/stacked.dart';
import 'package:stock_sample/views/dashboard/models/ledger.dart';

import 'service/dashboard_service.dart';

class DashboardViewModel extends BaseViewModel {
  final service = DashboardService();

  DashboardViewModel() {
    loadItems();
  }
  // @muttable
  List<Ledger> ledgers = [];

  // Add ViewModel specific code here
  Future<void> loadItems() async {
    setBusy(true);
    //Write your models loading codes here
    ledgers = await service.getLedger();
    //Let other views to render again
    setBusy(false);
    log(ledgers.toString());
  }
}
