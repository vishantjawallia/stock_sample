class BaseModel<T> {
  final String? msg;
  final bool? success;
  final T? data;
  const BaseModel({
    this.msg,
    this.success,
    this.data,
  });
  BaseModel copyWith({
    String? msg,
    bool? success,
    T? data,
  }) {
    return BaseModel(
      msg: msg ?? this.msg,
      success: success ?? this.success,
      data: data ?? this.data,
    );
  }

  Map<String, Object?> toJson() {
    return {'msg': msg, 'success': success, 'data': data};
  }

  static BaseModel fromJson(Map<String, Object?> json) {
    return BaseModel(
      msg: json['msg'] == null ? null : json['msg'] as String,
      success: json['success'] == null ? null : json['success'] as bool,
      data: json['data'] == null ? null : json['success'] as dynamic,
    );
  }

  @override
  String toString() {
    return '''BaseModel(
              msg:$msg,
              success:$success,
              data:$data
    ) ''';
  }

  @override
  bool operator ==(Object other) {
    return other is BaseModel && other.runtimeType == runtimeType && other.msg == msg && other.success == success && other.data == data;
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType,
      msg,
      success,
      data,
    );
  }
}
