// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProductStateImpl _$$ProductStateImplFromJson(Map<String, dynamic> json) =>
    _$ProductStateImpl(
      status: $enumDecodeNullable(_$ProductStatusEnumMap, json['status']) ??
          ProductStatus.initial,
      errorResponse: json['errorResponse'] == null
          ? null
          : ErrorResponse.fromJson(
              json['errorResponse'] as Map<String, dynamic>),
      listOfProducts: (json['listOfProducts'] as List<dynamic>?)
          ?.map((e) => ProductResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ProductStateImplToJson(_$ProductStateImpl instance) =>
    <String, dynamic>{
      'status': _$ProductStatusEnumMap[instance.status]!,
      'errorResponse': instance.errorResponse,
      'listOfProducts': instance.listOfProducts,
    };

const _$ProductStatusEnumMap = {
  ProductStatus.initial: 'initial',
  ProductStatus.loading: 'loading',
  ProductStatus.success: 'success',
  ProductStatus.error: 'error',
};
