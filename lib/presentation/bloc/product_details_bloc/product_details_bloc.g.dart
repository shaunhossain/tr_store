// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_details_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductDetailsStateImpl _$$ProductDetailsStateImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductDetailsStateImpl(
      status:
          $enumDecodeNullable(_$ProductDetailsStatusEnumMap, json['status']) ??
              ProductDetailsStatus.initial,
      errorResponse: json['errorResponse'] == null
          ? null
          : ErrorResponse.fromJson(
              json['errorResponse'] as Map<String, dynamic>),
      productResponse: json['productResponse'] == null
          ? null
          : ProductResponse.fromJson(
              json['productResponse'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ProductDetailsStateImplToJson(
        _$ProductDetailsStateImpl instance) =>
    <String, dynamic>{
      'status': _$ProductDetailsStatusEnumMap[instance.status]!,
      'errorResponse': instance.errorResponse,
      'productResponse': instance.productResponse,
    };

const _$ProductDetailsStatusEnumMap = {
  ProductDetailsStatus.initial: 'initial',
  ProductDetailsStatus.loading: 'loading',
  ProductDetailsStatus.success: 'success',
  ProductDetailsStatus.error: 'error',
};
