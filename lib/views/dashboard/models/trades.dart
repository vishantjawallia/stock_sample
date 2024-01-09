class Trades {
  final String? dhanClientId;
  final String? orderId;
  final String? exchangeOrderId;
  final String? exchangeTradeId;
  final String? transactionType;
  final String? exchangeSegment;
  final String? productType;
  final String? orderType;
  final String? tradingSymbol;
  final dynamic customSymbol;
  final String? securityId;
  final int? tradedQuantity;
  final double? tradedPrice;
  final String? createTime;
  final String? updateTime;
  final String? exchangeTime;
  final String? drvExpiryDate;
  final String? drvOptionType;
  final double? drvStrikePrice;

  const Trades({
    this.dhanClientId,
    this.orderId,
    this.exchangeOrderId,
    this.exchangeTradeId,
    this.transactionType,
    this.exchangeSegment,
    this.productType,
    this.orderType,
    this.tradingSymbol,
    this.customSymbol,
    this.securityId,
    this.tradedQuantity,
    this.tradedPrice,
    this.createTime,
    this.updateTime,
    this.exchangeTime,
    this.drvExpiryDate,
    this.drvOptionType,
    this.drvStrikePrice,
  });
  Trades copyWith({
    String? dhanClientId,
    String? orderId,
    String? exchangeOrderId,
    String? exchangeTradeId,
    String? transactionType,
    String? exchangeSegment,
    String? productType,
    String? orderType,
    String? tradingSymbol,
    dynamic customSymbol,
    String? securityId,
    int? tradedQuantity,
    double? tradedPrice,
    String? createTime,
    String? updateTime,
    String? exchangeTime,
    String? drvExpiryDate,
    String? drvOptionType,
    double? drvStrikePrice,
  }) {
    return Trades(
        dhanClientId: dhanClientId ?? this.dhanClientId,
        orderId: orderId ?? this.orderId,
        exchangeOrderId: exchangeOrderId ?? this.exchangeOrderId,
        exchangeTradeId: exchangeTradeId ?? this.exchangeTradeId,
        transactionType: transactionType ?? this.transactionType,
        exchangeSegment: exchangeSegment ?? this.exchangeSegment,
        productType: productType ?? this.productType,
        orderType: orderType ?? this.orderType,
        tradingSymbol: tradingSymbol ?? this.tradingSymbol,
        customSymbol: customSymbol ?? this.customSymbol,
        securityId: securityId ?? this.securityId,
        tradedQuantity: tradedQuantity ?? this.tradedQuantity,
        tradedPrice: tradedPrice ?? this.tradedPrice,
        createTime: createTime ?? this.createTime,
        updateTime: updateTime ?? this.updateTime,
        exchangeTime: exchangeTime ?? this.exchangeTime,
        drvExpiryDate: drvExpiryDate ?? this.drvExpiryDate,
        drvOptionType: drvOptionType ?? this.drvOptionType,
        drvStrikePrice: drvStrikePrice ?? this.drvStrikePrice);
  }

  Map<String, Object?> toJson() {
    return {
      'dhanClientId': dhanClientId,
      'orderId': orderId,
      'exchangeOrderId': exchangeOrderId,
      'exchangeTradeId': exchangeTradeId,
      'transactionType': transactionType,
      'exchangeSegment': exchangeSegment,
      'productType': productType,
      'orderType': orderType,
      'tradingSymbol': tradingSymbol,
      'customSymbol': customSymbol,
      'securityId': securityId,
      'tradedQuantity': tradedQuantity,
      'tradedPrice': tradedPrice,
      'createTime': createTime,
      'updateTime': updateTime,
      'exchangeTime': exchangeTime,
      'drvExpiryDate': drvExpiryDate,
      'drvOptionType': drvOptionType,
      'drvStrikePrice': drvStrikePrice
    };
  }

  static Trades fromJson(Map<String, Object?> json) {
    return Trades(
        dhanClientId: json['dhanClientId'] == null ? null : json['dhanClientId'] as String,
        orderId: json['orderId'] == null ? null : json['orderId'] as String,
        exchangeOrderId: json['exchangeOrderId'] == null ? null : json['exchangeOrderId'] as String,
        exchangeTradeId: json['exchangeTradeId'] == null ? null : json['exchangeTradeId'] as String,
        transactionType: json['transactionType'] == null ? null : json['transactionType'] as String,
        exchangeSegment: json['exchangeSegment'] == null ? null : json['exchangeSegment'] as String,
        productType: json['productType'] == null ? null : json['productType'] as String,
        orderType: json['orderType'] == null ? null : json['orderType'] as String,
        tradingSymbol: json['tradingSymbol'] == null ? null : json['tradingSymbol'] as String,
        customSymbol: json['customSymbol'] as dynamic,
        securityId: json['securityId'] == null ? null : json['securityId'] as String,
        tradedQuantity: json['tradedQuantity'] == null ? null : json['tradedQuantity'] as int,
        tradedPrice: json['tradedPrice'] == null ? null : json['tradedPrice'] as double,
        createTime: json['createTime'] == null ? null : json['createTime'] as String,
        updateTime: json['updateTime'] == null ? null : json['updateTime'] as String,
        exchangeTime: json['exchangeTime'] == null ? null : json['exchangeTime'] as String,
        drvExpiryDate: json['drvExpiryDate'] == null ? null : json['drvExpiryDate'] as String,
        drvOptionType: json['drvOptionType'] == null ? null : json['drvOptionType'] as String,
        drvStrikePrice: json['drvStrikePrice'] == null ? null : json['drvStrikePrice'] as double);
  }

  static List<Trades> fromJsonList(dynamic value) {
    List<Trades> data = [];
    for (Map<String, dynamic> element in value) {
      data.add(Trades.fromJson(element));
    }
    return data;
  }

  @override
  String toString() {
    return '''Trades(
                dhanClientId:$dhanClientId,
                orderId:$orderId,
                exchangeOrderId:$exchangeOrderId,
                exchangeTradeId:$exchangeTradeId,
                transactionType:$transactionType,
                exchangeSegment:$exchangeSegment,
                productType:$productType,
                orderType:$orderType,
                tradingSymbol:$tradingSymbol,
                customSymbol:$customSymbol,
                securityId:$securityId,
                tradedQuantity:$tradedQuantity,
                tradedPrice:$tradedPrice,
                createTime:$createTime,
                updateTime:$updateTime,
                exchangeTime:$exchangeTime,
                drvExpiryDate:$drvExpiryDate,
                drvOptionType:$drvOptionType,
                drvStrikePrice:$drvStrikePrice
              ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Trades &&
        other.runtimeType == runtimeType &&
        other.dhanClientId == dhanClientId &&
        other.orderId == orderId &&
        other.exchangeOrderId == exchangeOrderId &&
        other.exchangeTradeId == exchangeTradeId &&
        other.transactionType == transactionType &&
        other.exchangeSegment == exchangeSegment &&
        other.productType == productType &&
        other.orderType == orderType &&
        other.tradingSymbol == tradingSymbol &&
        other.customSymbol == customSymbol &&
        other.securityId == securityId &&
        other.tradedQuantity == tradedQuantity &&
        other.tradedPrice == tradedPrice &&
        other.createTime == createTime &&
        other.updateTime == updateTime &&
        other.exchangeTime == exchangeTime &&
        other.drvExpiryDate == drvExpiryDate &&
        other.drvOptionType == drvOptionType &&
        other.drvStrikePrice == drvStrikePrice;
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      dhanClientId,
      orderId,
      exchangeOrderId,
      exchangeTradeId,
      transactionType,
      exchangeSegment,
      productType,
      orderType,
      tradingSymbol,
      customSymbol,
      securityId,
      tradedQuantity,
      tradedPrice,
      createTime,
      updateTime,
      exchangeTime,
      drvExpiryDate,
      drvOptionType,
      drvStrikePrice,
    );
  }
}
