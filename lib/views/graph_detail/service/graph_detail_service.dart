// ignore_for_file: non_constant_identifier_names

import 'dart:developer';

import 'package:get/get.dart';
import 'package:stock_sample/config/config.dart';
import '../../../api/api_reference.dart';
import '../models/chart_historical.dart';

class GraphDetailService {
  /* -------------------------------- @postChartHistorical ------------------------------- */
  Future<ChartHistorical?> postChartHistorical(String symbol) async {
    ChartHistorical? data;

    Map<String, dynamic> body = {
      "symbol": symbol,
      "exchangeSegment": "NSE_EQ",
      "instrument": "EQUITY",
      "expiryCode": -2147483648,
      "fromDate": "2024-01-01",
      "toDate": "2024-01-07",
    };

    final res = await ApiReference.apiPost('$baseUrl/charts/historical', body);
    if (res.success!) {
      try {
        data = ChartHistorical.fromJson(res.data);
      } catch (e) {
        log(e.toString());
        log(e.runtimeType.toString());
        // log(e.printError());
      }
    } else {
      log(res.msg.toString());
    }
    return data;
  }
}
