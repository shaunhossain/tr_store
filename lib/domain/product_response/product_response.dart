import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_response.freezed.dart';
part 'product_response.g.dart';

List<ProductResponse> productResponseFromMap(String str) => List<ProductResponse>.from(json.decode(str).map((x) => ProductResponse.fromJson(x)));

String productResponseToMap(List<ProductResponse> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));


@freezed
class ProductResponse with _$ProductResponse {
  const factory ProductResponse({
    @JsonKey(name: "id")
    int? id,
    @JsonKey(name: "slug")
    String? slug,
    @JsonKey(name: "url")
    String? url,
    @JsonKey(name: "title")
    String? title,
    @JsonKey(name: "content")
    String? content,
    @JsonKey(name: "image")
    String? image,
    @JsonKey(name: "thumbnail")
    String? thumbnail,
    @JsonKey(name: "status")
    String? status,
    @JsonKey(name: "category")
    String? category,
    @JsonKey(name: "publishedAt")
    String? publishedAt,
    @JsonKey(name: "updatedAt")
    String? updatedAt,
    @JsonKey(name: "userId")
    int? userId,
    int? count,
  }) = _ProductResponse;

  factory ProductResponse.fromJson(Map<String, dynamic> json) => _$ProductResponseFromJson(json);
}