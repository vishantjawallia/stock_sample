class FundLimit {

  final String? dhanClientId;
  final double? availabelBalance;
  final double? sodLimit;
  final double? collateralAmount;
  final double? receiveableAmount;
  final double? utilizedAmount;
  final double? blockedPayoutAmount;
  final double? withdrawableBalance;

  const FundLimit({
    this.dhanClientId,
    this.availabelBalance,
    this.sodLimit,
    this.collateralAmount,
    this.receiveableAmount,
    this.utilizedAmount,
    this.blockedPayoutAmount,
    this.withdrawableBalance,
  });

  FundLimit copyWith({
    String? dhanClientId,
    double? availabelBalance,
    double? sodLimit,
    double? collateralAmount,
    double? receiveableAmount,
    double? utilizedAmount,
    double? blockedPayoutAmount,
    double? withdrawableBalance,
  }) {
    return FundLimit(
        dhanClientId: dhanClientId ?? this.dhanClientId,
        availabelBalance: availabelBalance ?? this.availabelBalance,
        sodLimit: sodLimit ?? this.sodLimit,
        collateralAmount: collateralAmount ?? this.collateralAmount,
        receiveableAmount: receiveableAmount ?? this.receiveableAmount,
        utilizedAmount: utilizedAmount ?? this.utilizedAmount,
        blockedPayoutAmount: blockedPayoutAmount ?? this.blockedPayoutAmount,
        withdrawableBalance: withdrawableBalance ?? this.withdrawableBalance);
  }

  Map<String, Object?> toJson() {
    return {
      'dhanClientId': dhanClientId,
      'availabelBalance': availabelBalance,
      'sodLimit': sodLimit,
      'collateralAmount': collateralAmount,
      'receiveableAmount': receiveableAmount,
      'utilizedAmount': utilizedAmount,
      'blockedPayoutAmount': blockedPayoutAmount,
      'withdrawableBalance': withdrawableBalance
    };
  }

  static FundLimit fromJson(Map<String, Object?> json) {
    return FundLimit(
        dhanClientId: json['dhanClientId'] == null ? null : json['dhanClientId'] as String,
        availabelBalance: json['availabelBalance'] == null ? null : json['availabelBalance'] as double,
        sodLimit: json['sodLimit'] == null ? null : json['sodLimit'] as double,
        collateralAmount: json['collateralAmount'] == null ? null : json['collateralAmount'] as double,
        receiveableAmount: json['receiveableAmount'] == null ? null : json['receiveableAmount'] as double,
        utilizedAmount: json['utilizedAmount'] == null ? null : json['utilizedAmount'] as double,
        blockedPayoutAmount: json['blockedPayoutAmount'] == null ? null : json['blockedPayoutAmount'] as double,
        withdrawableBalance: json['withdrawableBalance'] == null ? null : json['withdrawableBalance'] as double);
  }

  @override
  String toString() {
    return '''FundLimit(
              dhanClientId:$dhanClientId,
              availabelBalance:$availabelBalance,
              sodLimit:$sodLimit,
              collateralAmount:$collateralAmount,
              receiveableAmount:$receiveableAmount,
              utilizedAmount:$utilizedAmount,
              blockedPayoutAmount:$blockedPayoutAmount,
              withdrawableBalance:$withdrawableBalance
            ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is FundLimit &&
        other.runtimeType == runtimeType &&
        other.dhanClientId == dhanClientId &&
        other.availabelBalance == availabelBalance &&
        other.sodLimit == sodLimit &&
        other.collateralAmount == collateralAmount &&
        other.receiveableAmount == receiveableAmount &&
        other.utilizedAmount == utilizedAmount &&
        other.blockedPayoutAmount == blockedPayoutAmount &&
        other.withdrawableBalance == withdrawableBalance;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, dhanClientId, availabelBalance, sodLimit, collateralAmount, receiveableAmount, utilizedAmount, blockedPayoutAmount, withdrawableBalance);
  }
}
