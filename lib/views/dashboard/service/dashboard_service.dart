// ignore_for_file: non_constant_identifier_names

import 'dart:developer';

import 'package:stock_sample/config/config.dart';
import 'package:stock_sample/views/dashboard/models/postion.dart';
import 'package:stock_sample/views/dashboard/models/trades.dart';

import '../../../api/api_reference.dart';
import '../../graph_detail/models/chart_historical.dart';
import '../models/fund_limit.dart';
import '../models/ledger.dart';

class DashboardService {
  /* -------------------------------- @getLedger ------------------------------- */
  Future<List<Ledger>> getLedger() async {
    List<Ledger> data = [];

    final res = await ApiReference.apiGet('$baseUrl/ledger?from_date=2024-1-1&to_date=2024-1-6');
    if (res.success!) {
      data = Ledger.fromJsonList(res.data);
    } else {
      log(res.msg.toString());
    }
    return data;
  }

  /* -------------------------------- @getTrades ------------------------------- */
  Future<List<Trades>> getTrades() async {
    List<Trades> data = [];

    final res = await ApiReference.apiGet('$baseUrl/trades');
    if (res.success!) {
      data = Trades.fromJsonList(res.data);
    } else {
      log(res.msg.toString());
    }
    return data;
  }

  /* -------------------------------- @getFundLimit ------------------------------- */
  Future<FundLimit?> getFundLimit() async {
    FundLimit? data;

    final res = await ApiReference.apiGet('$baseUrl/fundlimit');
    if (res.success!) {
      data = FundLimit.fromJson(res.data);
    } else {
      log(res.msg.toString());
    }
    return data;
  }

  /* -------------------------------- @postChartHistorical ------------------------------- */
  Future<FundLimit?> postChartHistorical() async {
    FundLimit? data;

    final res = await ApiReference.apiGet('$baseUrl/fundlimit');
    if (res.success!) {
      data = FundLimit.fromJson(res.data);
    } else {
      log(res.msg.toString());
    }
    return data;
  }

  /* -------------------------------- @postChartHistorical ------------------------------- */
  Future<List<Postion>> getPostion() async {
    List<Postion> data = [];

    final res = await ApiReference.apiGet('$baseUrl/positions');
    if (res.success!) {
      data = Postion.fromJsonList(res.data);
    } else {
      log(res.msg.toString());
    }
    return data;
  }

  /* -------------------------------- @postChartIntraday ------------------------------- */
  Future<ChartHistorical?> postChartIntraday(String securityId) async {
    ChartHistorical? data;

    Map<String, dynamic> body = {
      "securityId": securityId,
      "exchangeSegment": "NSE_EQ",
      "instrument": "EQUITY",
    };

    final res = await ApiReference.apiPost('$baseUrl/charts/intraday', body);
    if (res.success!) {
      try {
        data = ChartHistorical.fromJson(res.data);
        log(data.toString());
      } catch (e) {
        log(e.toString());
        log(e.runtimeType.toString());
      }
    } else {
      log(res.msg.toString());
    }
    return data;
  }
}
