// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CartStateImpl _$$CartStateImplFromJson(Map<String, dynamic> json) =>
    _$CartStateImpl(
      status: $enumDecodeNullable(_$CartStatusEnumMap, json['status']) ??
          CartStatus.initial,
      listOfProducts: (json['listOfProducts'] as List<dynamic>?)
          ?.map((e) => ProductEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$CartStateImplToJson(_$CartStateImpl instance) =>
    <String, dynamic>{
      'status': _$CartStatusEnumMap[instance.status]!,
      'listOfProducts': instance.listOfProducts,
    };

const _$CartStatusEnumMap = {
  CartStatus.initial: 'initial',
  CartStatus.loading: 'loading',
  CartStatus.success: 'success',
  CartStatus.error: 'error',
};
