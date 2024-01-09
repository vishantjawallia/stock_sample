class Order {
  final String? orderId;
  final String? orderStatus;
  const Order({this.orderId, this.orderStatus});
  Order copyWith({
    String? orderId,
    String? orderStatus,
  }) {
    return Order(orderId: orderId ?? this.orderId, orderStatus: orderStatus ?? this.orderStatus);
  }

  Map<String, Object?> toJson() {
    return {'orderId': orderId, 'orderStatus': orderStatus};
  }

  static Order fromJson(Map<String, Object?> json) {
    return Order(orderId: json['orderId'] == null ? null : json['orderId'] as String, orderStatus: json['orderStatus'] == null ? null : json['orderStatus'] as String);
  }

  @override
  String toString() {
    return '''Order(
                orderId:$orderId,
orderStatus:$orderStatus
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Order && other.runtimeType == runtimeType && other.orderId == orderId && other.orderStatus == orderStatus;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, orderId, orderStatus);
  }
}
