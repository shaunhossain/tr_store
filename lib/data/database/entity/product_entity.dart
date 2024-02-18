import 'package:freezed_annotation/freezed_annotation.dart';

part 'product_entity.freezed.dart';
part 'product_entity.g.dart';

@freezed
class ProductEntity with _$ProductEntity {
  const factory ProductEntity({
    int? id,
    String? slug,
    String? url,
    String? title,
    String? content,
    String? image,
    String? thumbnail,
    String? status,
    String? category,
    String? publishedAt,
    String? updatedAt,
    int? userId,
    int? count,
  }) = _ProductEntity;

  factory ProductEntity.fromJson(Map<String, dynamic> json) => _$ProductEntityFromJson(json);
}