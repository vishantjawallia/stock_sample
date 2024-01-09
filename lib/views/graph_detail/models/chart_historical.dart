import 'dart:developer';

class ChartHistorical {
  final List<double>? open;
  final List<double>? high;
  final List<double>? low;
  final List<double>? close;
  final List<double>? volume;
  final List<double>? startTime;
  const ChartHistorical({
    this.open,
    this.high,
    this.low,
    this.close,
    this.volume,
    this.startTime,
  });
  ChartHistorical copyWith({
    List<double>? open,
    List<double>? high,
    List<double>? low,
    List<double>? close,
    List<double>? volume,
    List<double>? startTime,
  }) {
    return ChartHistorical(
      open: open ?? this.open,
      high: high ?? this.high,
      low: low ?? this.low,
      close: close ?? this.close,
      volume: volume ?? this.volume,
      startTime: startTime ?? this.startTime,
    );
  }

  Map<String, Object?> toJson() {
    return {
      'open': open,
      'high': high,
      'low': low,
      'close': close,
      'volume': volume,
      'start_Time': startTime,
    };
  }

  static ChartHistorical fromJson(Map<String, Object?> json) {
    return ChartHistorical(
      open: json['open'] == null ? null : (json['open'] as List<dynamic>).map((e) => e as double).toList(),
      high: json['high'] == null ? null : (json['high'] as List<dynamic>).map((e) => e as double).toList(),
      low: json['low'] == null ? null : (json['low'] as List<dynamic>).map((e) => e as double).toList(),
      close: json['close'] == null ? null : (json['close'] as List<dynamic>).map((e) => e as double).toList(),
      volume: json['volume'] == null ? null : (json['volume'] as List<dynamic>).map((e) => e as double).toList(),
      startTime: json['start_Time'] == null ? null : (json['start_Time'] as List<dynamic>).map((e) => e as double).toList(),
    );
  }

  @override
  String toString() {
    return '''ChartHistorical(
              open:$open,
              high:$high,
              low:$low,
              close:$close,
              volume:$volume,
              startTime:$startTime
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is ChartHistorical &&
        other.runtimeType == runtimeType &&
        other.open == open &&
        other.high == high &&
        other.low == low &&
        other.close == close &&
        other.volume == volume &&
        other.startTime == startTime;
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      open,
      high,
      low,
      close,
      volume,
      startTime,
    );
  }
}
