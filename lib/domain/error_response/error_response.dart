import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'error_response.freezed.dart';
part 'error_response.g.dart';

ErrorResponse errorResponseFromJson(String str) =>
    ErrorResponse.fromJson(json.decode(str));

String errorResponseToJson(ErrorResponse data) => json.encode(data.toJson());

@freezed
class ErrorResponse with _$ErrorResponse {
  const factory ErrorResponse({
    @JsonKey(name: "success")
    bool? success,
    @JsonKey(name: "message")
    String? message,
  }) = _ErrorResponse;

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);
}
