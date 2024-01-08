// ignore_for_file: non_constant_identifier_names

import 'dart:developer';

import '../../../api/api_reference.dart';
import '../models/ledger.dart';

class DashboardService {
  DashboardService();

  /* -------------------------------- @getLedger ------------------------------- */
  Future<List<Ledger>> getLedger() async {
    List<Ledger> data = [];

    final res = await ApiReference.apiGet('https://api.dhan.co/ledger?from_date=2024-1-1&to_date=2024-1-6');
    if (res.success!) {
      data = Ledger.fromJsonList(res.data);
    } else {
      log(res.msg.toString());
    }
    return data;
  }
}
