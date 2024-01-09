// ignore_for_file: non_constant_identifier_names

import 'dart:developer';


import 'package:stock_sample/config/config.dart';
import '../../../api/api_reference.dart';
import '../models/chart_historical.dart';
import '../models/order.dart';

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

  /* -------------------------------- @postChartHistorical ------------------------------- */
  Future<Order?> postOrderPlace(
    String dhanClientId,
    String correlationId,
    String transactionType,
    String exchangeSegment,
    String productType,
    String orderType,
    String validity,
    String tradingSymbol,
    String securityId,
    int quantity,
    int disclosedQuantity,
    double price,
    double triggerPrice,
    bool afterMarketOrder,
    String amoTime,
    double boProfitValue,
    double boStopLossValue,
    String drvExpiryDate,
    String drvOptionType,
    double drvStrikePrice,
  ) async {
    Order? data;

    Map<String, dynamic> body = {
      "dhanClientId": dhanClientId, //  "dhanClientId": "string",
      "correlationId": correlationId, //  "correlationId": "string",
      "transactionType": transactionType, //  "transactionType": "BUY",
      "exchangeSegment": exchangeSegment, //  "exchangeSegment": "NSE_EQ",
      "orderType": orderType, //  "productType": "CNC",
      "productType": productType, //  "orderType": "LIMIT",
      "validity": validity, //  "validity": "DAY",
      "tradingSymbol": tradingSymbol, //  "tradingSymbol": "string",
      "securityId": securityId, //  "securityId": "string",
      "quantity": quantity, //  "quantity": -2147483648,
      "disclosedQuantity": disclosedQuantity, //  "disclosedQuantity": -2147483648,
      "price": price, //  "price": -3.402823669209385e+38,
      "triggerPrice": triggerPrice, //  "triggerPrice": -3.402823669209385e+38,
      "afterMarketOrder": afterMarketOrder, //  "afterMarketOrder": true,
      "amoTime": amoTime, //  "amoTime": "OPEN",
      "boProfitValue": boProfitValue, //  "boProfitValue": -3.402823669209385e+38,
      "boStopLossValue": boStopLossValue, //  "boStopLossValue": -3.402823669209385e+38,
      "drvExpiryDate": drvExpiryDate, //  "drvExpiryDate": "string",
      "drvOptionType": drvOptionType, //  "drvOptionType": "CALL",
      "drvStrikePrice": drvStrikePrice, //  "drvStrikePrice": -3.402823669209385e+38
    };

    final res = await ApiReference.apiPost('$baseUrl/orders', body);
    if (res.success!) {
      try {
        data = Order.fromJson(res.data);
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
