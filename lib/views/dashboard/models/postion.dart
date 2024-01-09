class Postion {
  final String? dhanClientId;
  final String? tradingSymbol;
  final String? securityId;
  final String? positionType;
  final String? exchangeSegment;
  final String? productType;
  final double? buyAvg;
  final double? costPrice;
  final int? buyQty;
  final double? sellAvg;
  final int? sellQty;
  final int? netQty;
  final double? realizedProfit;
  final double? unrealizedProfit;
  final double? rbiReferenceRate;
  final int? multiplier;
  final int? carryForwardBuyQty;
  final int? carryForwardSellQty;
  final double? carryForwardBuyValue;
  final double? carryForwardSellValue;
  final int? dayBuyQty;
  final int? daySellQty;
  final double? dayBuyValue;
  final double? daySellValue;
  final String? drvExpiryDate;
  final String? drvOptionType;
  final double? drvStrikePrice;
  final bool? crossCurrency;

  const Postion({
    this.dhanClientId,
    this.tradingSymbol,
    this.securityId,
    this.positionType,
    this.exchangeSegment,
    this.productType,
    this.buyAvg,
    this.costPrice,
    this.buyQty,
    this.sellAvg,
    this.sellQty,
    this.netQty,
    this.realizedProfit,
    this.unrealizedProfit,
    this.rbiReferenceRate,
    this.multiplier,
    this.carryForwardBuyQty,
    this.carryForwardSellQty,
    this.carryForwardBuyValue,
    this.carryForwardSellValue,
    this.dayBuyQty,
    this.daySellQty,
    this.dayBuyValue,
    this.daySellValue,
    this.drvExpiryDate,
    this.drvOptionType,
    this.drvStrikePrice,
    this.crossCurrency,
  });

  Postion copyWith({
    String? dhanClientId,
    String? tradingSymbol,
    String? securityId,
    String? positionType,
    String? exchangeSegment,
    String? productType,
    double? buyAvg,
    double? costPrice,
    int? buyQty,
    double? sellAvg,
    int? sellQty,
    int? netQty,
    double? realizedProfit,
    double? unrealizedProfit,
    double? rbiReferenceRate,
    int? multiplier,
    int? carryForwardBuyQty,
    int? carryForwardSellQty,
    double? carryForwardBuyValue,
    double? carryForwardSellValue,
    int? dayBuyQty,
    int? daySellQty,
    double? dayBuyValue,
    double? daySellValue,
    String? drvExpiryDate,
    String? drvOptionType,
    double? drvStrikePrice,
    bool? crossCurrency,
  }) {
    return Postion(
        dhanClientId: dhanClientId ?? this.dhanClientId,
        tradingSymbol: tradingSymbol ?? this.tradingSymbol,
        securityId: securityId ?? this.securityId,
        positionType: positionType ?? this.positionType,
        exchangeSegment: exchangeSegment ?? this.exchangeSegment,
        productType: productType ?? this.productType,
        buyAvg: buyAvg ?? this.buyAvg,
        costPrice: costPrice ?? this.costPrice,
        buyQty: buyQty ?? this.buyQty,
        sellAvg: sellAvg ?? this.sellAvg,
        sellQty: sellQty ?? this.sellQty,
        netQty: netQty ?? this.netQty,
        realizedProfit: realizedProfit ?? this.realizedProfit,
        unrealizedProfit: unrealizedProfit ?? this.unrealizedProfit,
        rbiReferenceRate: rbiReferenceRate ?? this.rbiReferenceRate,
        multiplier: multiplier ?? this.multiplier,
        carryForwardBuyQty: carryForwardBuyQty ?? this.carryForwardBuyQty,
        carryForwardSellQty: carryForwardSellQty ?? this.carryForwardSellQty,
        carryForwardBuyValue: carryForwardBuyValue ?? this.carryForwardBuyValue,
        carryForwardSellValue: carryForwardSellValue ?? this.carryForwardSellValue,
        dayBuyQty: dayBuyQty ?? this.dayBuyQty,
        daySellQty: daySellQty ?? this.daySellQty,
        dayBuyValue: dayBuyValue ?? this.dayBuyValue,
        daySellValue: daySellValue ?? this.daySellValue,
        drvExpiryDate: drvExpiryDate ?? this.drvExpiryDate,
        drvOptionType: drvOptionType ?? this.drvOptionType,
        drvStrikePrice: drvStrikePrice ?? this.drvStrikePrice,
        crossCurrency: crossCurrency ?? this.crossCurrency);
  }

  Map<String, Object?> toJson() {
    return {
      'dhanClientId': dhanClientId,
      'tradingSymbol': tradingSymbol,
      'securityId': securityId,
      'positionType': positionType,
      'exchangeSegment': exchangeSegment,
      'productType': productType,
      'buyAvg': buyAvg,
      'costPrice': costPrice,
      'buyQty': buyQty,
      'sellAvg': sellAvg,
      'sellQty': sellQty,
      'netQty': netQty,
      'realizedProfit': realizedProfit,
      'unrealizedProfit': unrealizedProfit,
      'rbiReferenceRate': rbiReferenceRate,
      'multiplier': multiplier,
      'carryForwardBuyQty': carryForwardBuyQty,
      'carryForwardSellQty': carryForwardSellQty,
      'carryForwardBuyValue': carryForwardBuyValue,
      'carryForwardSellValue': carryForwardSellValue,
      'dayBuyQty': dayBuyQty,
      'daySellQty': daySellQty,
      'dayBuyValue': dayBuyValue,
      'daySellValue': daySellValue,
      'drvExpiryDate': drvExpiryDate,
      'drvOptionType': drvOptionType,
      'drvStrikePrice': drvStrikePrice,
      'crossCurrency': crossCurrency
    };
  }

  static Postion fromJson(Map<String, Object?> json) {
    return Postion(
        dhanClientId: json['dhanClientId'] == null ? null : json['dhanClientId'] as String,
        tradingSymbol: json['tradingSymbol'] == null ? null : json['tradingSymbol'] as String,
        securityId: json['securityId'] == null ? null : json['securityId'] as String,
        positionType: json['positionType'] == null ? null : json['positionType'] as String,
        exchangeSegment: json['exchangeSegment'] == null ? null : json['exchangeSegment'] as String,
        productType: json['productType'] == null ? null : json['productType'] as String,
        buyAvg: json['buyAvg'] == null ? null : json['buyAvg'] as double,
        costPrice: json['costPrice'] == null ? null : json['costPrice'] as double,
        buyQty: json['buyQty'] == null ? null : json['buyQty'] as int,
        sellAvg: json['sellAvg'] == null ? null : json['sellAvg'] as double,
        sellQty: json['sellQty'] == null ? null : json['sellQty'] as int,
        netQty: json['netQty'] == null ? null : json['netQty'] as int,
        realizedProfit: json['realizedProfit'] == null ? null : json['realizedProfit'] as double,
        unrealizedProfit: json['unrealizedProfit'] == null ? null : json['unrealizedProfit'] as double,
        rbiReferenceRate: json['rbiReferenceRate'] == null ? null : json['rbiReferenceRate'] as double,
        multiplier: json['multiplier'] == null ? null : json['multiplier'] as int,
        carryForwardBuyQty: json['carryForwardBuyQty'] == null ? null : json['carryForwardBuyQty'] as int,
        carryForwardSellQty: json['carryForwardSellQty'] == null ? null : json['carryForwardSellQty'] as int,
        carryForwardBuyValue: json['carryForwardBuyValue'] == null ? null : json['carryForwardBuyValue'] as double,
        carryForwardSellValue: json['carryForwardSellValue'] == null ? null : json['carryForwardSellValue'] as double,
        dayBuyQty: json['dayBuyQty'] == null ? null : json['dayBuyQty'] as int,
        daySellQty: json['daySellQty'] == null ? null : json['daySellQty'] as int,
        dayBuyValue: json['dayBuyValue'] == null ? null : json['dayBuyValue'] as double,
        daySellValue: json['daySellValue'] == null ? null : json['daySellValue'] as double,
        drvExpiryDate: json['drvExpiryDate'] == null ? null : json['drvExpiryDate'] as String,
        drvOptionType: json['drvOptionType'] == null ? null : json['drvOptionType'] as String,
        drvStrikePrice: json['drvStrikePrice'] == null ? null : json['drvStrikePrice'] as double,
        crossCurrency: json['crossCurrency'] == null ? null : json['crossCurrency'] as bool);
  }

  static List<Postion> fromJsonList(dynamic json) {
    List<Postion> data = [];
    for (Map<String, dynamic> element in json) {
      data.add(Postion.fromJson(element));
    }
    return data;
  }

  @override
  String toString() {
    return '''Postion(
              dhanClientId:$dhanClientId,
              tradingSymbol:$tradingSymbol,
              securityId:$securityId,
              positionType:$positionType,
              exchangeSegment:$exchangeSegment,
              productType:$productType,
              buyAvg:$buyAvg,
              costPrice:$costPrice,
              buyQty:$buyQty,
              sellAvg:$sellAvg,
              sellQty:$sellQty,
              netQty:$netQty,
              realizedProfit:$realizedProfit,
              unrealizedProfit:$unrealizedProfit,
              rbiReferenceRate:$rbiReferenceRate,
              multiplier:$multiplier,
              carryForwardBuyQty:$carryForwardBuyQty,
              carryForwardSellQty:$carryForwardSellQty,
              carryForwardBuyValue:$carryForwardBuyValue,
              carryForwardSellValue:$carryForwardSellValue,
              dayBuyQty:$dayBuyQty,
              daySellQty:$daySellQty,
              dayBuyValue:$dayBuyValue,
              daySellValue:$daySellValue,
              drvExpiryDate:$drvExpiryDate,
              drvOptionType:$drvOptionType,
              drvStrikePrice:$drvStrikePrice,
              crossCurrency:$crossCurrency
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Postion &&
        other.runtimeType == runtimeType &&
        other.dhanClientId == dhanClientId &&
        other.tradingSymbol == tradingSymbol &&
        other.securityId == securityId &&
        other.positionType == positionType &&
        other.exchangeSegment == exchangeSegment &&
        other.productType == productType &&
        other.buyAvg == buyAvg &&
        other.costPrice == costPrice &&
        other.buyQty == buyQty &&
        other.sellAvg == sellAvg &&
        other.sellQty == sellQty &&
        other.netQty == netQty &&
        other.realizedProfit == realizedProfit &&
        other.unrealizedProfit == unrealizedProfit &&
        other.rbiReferenceRate == rbiReferenceRate &&
        other.multiplier == multiplier &&
        other.carryForwardBuyQty == carryForwardBuyQty &&
        other.carryForwardSellQty == carryForwardSellQty &&
        other.carryForwardBuyValue == carryForwardBuyValue &&
        other.carryForwardSellValue == carryForwardSellValue &&
        other.dayBuyQty == dayBuyQty &&
        other.daySellQty == daySellQty &&
        other.dayBuyValue == dayBuyValue &&
        other.daySellValue == daySellValue &&
        other.drvExpiryDate == drvExpiryDate &&
        other.drvOptionType == drvOptionType &&
        other.drvStrikePrice == drvStrikePrice &&
        other.crossCurrency == crossCurrency;
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      dhanClientId,
      tradingSymbol,
      securityId,
      positionType,
      exchangeSegment,
      productType,
      buyAvg,
      costPrice,
      buyQty,
      sellAvg,
      sellQty,
      netQty,
      realizedProfit,
      unrealizedProfit,
      rbiReferenceRate,
      multiplier,
      carryForwardBuyQty,
      carryForwardSellQty,
      carryForwardBuyValue,
    );
  }
}
