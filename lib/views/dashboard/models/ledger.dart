class Ledger {
  final String? dhanClientId;
  final String? narration;
  final String? voucherdate;
  final String? exchange;
  final String? voucherdesc;
  final String? vouchernumber;
  final String? debit;
  final String? credit;
  final String? runbal;
  const Ledger({
    this.dhanClientId,
    this.narration,
    this.voucherdate,
    this.exchange,
    this.voucherdesc,
    this.vouchernumber,
    this.debit,
    this.credit,
    this.runbal,
  });
  Ledger copyWith({
    String? dhanClientId,
    String? narration,
    String? voucherdate,
    String? exchange,
    String? voucherdesc,
    String? vouchernumber,
    String? debit,
    String? credit,
    String? runbal,
  }) {
    return Ledger(
        dhanClientId: dhanClientId ?? this.dhanClientId,
        narration: narration ?? this.narration,
        voucherdate: voucherdate ?? this.voucherdate,
        exchange: exchange ?? this.exchange,
        voucherdesc: voucherdesc ?? this.voucherdesc,
        vouchernumber: vouchernumber ?? this.vouchernumber,
        debit: debit ?? this.debit,
        credit: credit ?? this.credit,
        runbal: runbal ?? this.runbal);
  }

  Map<String, Object?> toJson() {
    return {
      'dhanClientId': dhanClientId,
      'narration': narration,
      'voucherdate': voucherdate,
      'exchange': exchange,
      'voucherdesc': voucherdesc,
      'vouchernumber': vouchernumber,
      'debit': debit,
      'credit': credit,
      'runbal': runbal
    };
  }

  static Ledger fromJson(Map<String, Object?> json) {
    return Ledger(
        dhanClientId: json['dhanClientId'] == null ? null : json['dhanClientId'] as String,
        narration: json['narration'] == null ? null : json['narration'] as String,
        voucherdate: json['voucherdate'] == null ? null : json['voucherdate'] as String,
        exchange: json['exchange'] == null ? null : json['exchange'] as String,
        voucherdesc: json['voucherdesc'] == null ? null : json['voucherdesc'] as String,
        vouchernumber: json['vouchernumber'] == null ? null : json['vouchernumber'] as String,
        debit: json['debit'] == null ? null : json['debit'] as String,
        credit: json['credit'] == null ? null : json['credit'] as String,
        runbal: json['runbal'] == null ? null : json['runbal'] as String);
  }

  static List<Ledger> fromJsonList(dynamic value) {
    List<Ledger> data = [];
    for (Map<String, dynamic> element in value) {
      data.add(Ledger.fromJson(element));
    }
    return data;
  }

  @override
  String toString() {
    return '''Ledger(
              dhanClientId:$dhanClientId,
              narration:$narration,
              voucherdate:$voucherdate,
              exchange:$exchange,
              voucherdesc:$voucherdesc,
              vouchernumber:$vouchernumber,
              debit:$debit,
              credit:$credit,
              runbal:$runbal
           ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is Ledger &&
        other.runtimeType == runtimeType &&
        other.dhanClientId == dhanClientId &&
        other.narration == narration &&
        other.voucherdate == voucherdate &&
        other.exchange == exchange &&
        other.voucherdesc == voucherdesc &&
        other.vouchernumber == vouchernumber &&
        other.debit == debit &&
        other.credit == credit &&
        other.runbal == runbal;
  }

  @override
  int get hashCode {
    return Object.hash(runtimeType, dhanClientId, narration, voucherdate, exchange, voucherdesc, vouchernumber, debit, credit, runbal);
  }
}
