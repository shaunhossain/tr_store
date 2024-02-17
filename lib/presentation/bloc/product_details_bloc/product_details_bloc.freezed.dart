// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_details_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductDetailsEvent {
  int get postId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int postId) getProductInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int postId)? getProductInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int postId)? getProductInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProductInfo value) getProductInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProductInfo value)? getProductInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProductInfo value)? getProductInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductDetailsEventCopyWith<ProductDetailsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsEventCopyWith<$Res> {
  factory $ProductDetailsEventCopyWith(
          ProductDetailsEvent value, $Res Function(ProductDetailsEvent) then) =
      _$ProductDetailsEventCopyWithImpl<$Res, ProductDetailsEvent>;
  @useResult
  $Res call({int postId});
}

/// @nodoc
class _$ProductDetailsEventCopyWithImpl<$Res, $Val extends ProductDetailsEvent>
    implements $ProductDetailsEventCopyWith<$Res> {
  _$ProductDetailsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
  }) {
    return _then(_value.copyWith(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetProductInfoImplCopyWith<$Res>
    implements $ProductDetailsEventCopyWith<$Res> {
  factory _$$GetProductInfoImplCopyWith(_$GetProductInfoImpl value,
          $Res Function(_$GetProductInfoImpl) then) =
      __$$GetProductInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int postId});
}

/// @nodoc
class __$$GetProductInfoImplCopyWithImpl<$Res>
    extends _$ProductDetailsEventCopyWithImpl<$Res, _$GetProductInfoImpl>
    implements _$$GetProductInfoImplCopyWith<$Res> {
  __$$GetProductInfoImplCopyWithImpl(
      _$GetProductInfoImpl _value, $Res Function(_$GetProductInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
  }) {
    return _then(_$GetProductInfoImpl(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetProductInfoImpl implements _GetProductInfo {
  const _$GetProductInfoImpl({required this.postId});

  @override
  final int postId;

  @override
  String toString() {
    return 'ProductDetailsEvent.getProductInfo(postId: $postId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProductInfoImpl &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProductInfoImplCopyWith<_$GetProductInfoImpl> get copyWith =>
      __$$GetProductInfoImplCopyWithImpl<_$GetProductInfoImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int postId) getProductInfo,
  }) {
    return getProductInfo(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int postId)? getProductInfo,
  }) {
    return getProductInfo?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int postId)? getProductInfo,
    required TResult orElse(),
  }) {
    if (getProductInfo != null) {
      return getProductInfo(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetProductInfo value) getProductInfo,
  }) {
    return getProductInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetProductInfo value)? getProductInfo,
  }) {
    return getProductInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetProductInfo value)? getProductInfo,
    required TResult orElse(),
  }) {
    if (getProductInfo != null) {
      return getProductInfo(this);
    }
    return orElse();
  }
}

abstract class _GetProductInfo implements ProductDetailsEvent {
  const factory _GetProductInfo({required final int postId}) =
      _$GetProductInfoImpl;

  @override
  int get postId;
  @override
  @JsonKey(ignore: true)
  _$$GetProductInfoImplCopyWith<_$GetProductInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductDetailsState _$ProductDetailsStateFromJson(Map<String, dynamic> json) {
  return _ProductDetailsState.fromJson(json);
}

/// @nodoc
mixin _$ProductDetailsState {
  ProductDetailsStatus get status => throw _privateConstructorUsedError;
  ErrorResponse? get errorResponse => throw _privateConstructorUsedError;
  ProductResponse? get productResponse => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductDetailsStateCopyWith<ProductDetailsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDetailsStateCopyWith<$Res> {
  factory $ProductDetailsStateCopyWith(
          ProductDetailsState value, $Res Function(ProductDetailsState) then) =
      _$ProductDetailsStateCopyWithImpl<$Res, ProductDetailsState>;
  @useResult
  $Res call(
      {ProductDetailsStatus status,
      ErrorResponse? errorResponse,
      ProductResponse? productResponse});

  $ErrorResponseCopyWith<$Res>? get errorResponse;
  $ProductResponseCopyWith<$Res>? get productResponse;
}

/// @nodoc
class _$ProductDetailsStateCopyWithImpl<$Res, $Val extends ProductDetailsState>
    implements $ProductDetailsStateCopyWith<$Res> {
  _$ProductDetailsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorResponse = freezed,
    Object? productResponse = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductDetailsStatus,
      errorResponse: freezed == errorResponse
          ? _value.errorResponse
          : errorResponse // ignore: cast_nullable_to_non_nullable
              as ErrorResponse?,
      productResponse: freezed == productResponse
          ? _value.productResponse
          : productResponse // ignore: cast_nullable_to_non_nullable
              as ProductResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorResponseCopyWith<$Res>? get errorResponse {
    if (_value.errorResponse == null) {
      return null;
    }

    return $ErrorResponseCopyWith<$Res>(_value.errorResponse!, (value) {
      return _then(_value.copyWith(errorResponse: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductResponseCopyWith<$Res>? get productResponse {
    if (_value.productResponse == null) {
      return null;
    }

    return $ProductResponseCopyWith<$Res>(_value.productResponse!, (value) {
      return _then(_value.copyWith(productResponse: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductDetailsStateImplCopyWith<$Res>
    implements $ProductDetailsStateCopyWith<$Res> {
  factory _$$ProductDetailsStateImplCopyWith(_$ProductDetailsStateImpl value,
          $Res Function(_$ProductDetailsStateImpl) then) =
      __$$ProductDetailsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductDetailsStatus status,
      ErrorResponse? errorResponse,
      ProductResponse? productResponse});

  @override
  $ErrorResponseCopyWith<$Res>? get errorResponse;
  @override
  $ProductResponseCopyWith<$Res>? get productResponse;
}

/// @nodoc
class __$$ProductDetailsStateImplCopyWithImpl<$Res>
    extends _$ProductDetailsStateCopyWithImpl<$Res, _$ProductDetailsStateImpl>
    implements _$$ProductDetailsStateImplCopyWith<$Res> {
  __$$ProductDetailsStateImplCopyWithImpl(_$ProductDetailsStateImpl _value,
      $Res Function(_$ProductDetailsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorResponse = freezed,
    Object? productResponse = freezed,
  }) {
    return _then(_$ProductDetailsStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductDetailsStatus,
      errorResponse: freezed == errorResponse
          ? _value.errorResponse
          : errorResponse // ignore: cast_nullable_to_non_nullable
              as ErrorResponse?,
      productResponse: freezed == productResponse
          ? _value.productResponse
          : productResponse // ignore: cast_nullable_to_non_nullable
              as ProductResponse?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDetailsStateImpl implements _ProductDetailsState {
  const _$ProductDetailsStateImpl(
      {this.status = ProductDetailsStatus.initial,
      this.errorResponse,
      this.productResponse});

  factory _$ProductDetailsStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDetailsStateImplFromJson(json);

  @override
  @JsonKey()
  final ProductDetailsStatus status;
  @override
  final ErrorResponse? errorResponse;
  @override
  final ProductResponse? productResponse;

  @override
  String toString() {
    return 'ProductDetailsState(status: $status, errorResponse: $errorResponse, productResponse: $productResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDetailsStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorResponse, errorResponse) ||
                other.errorResponse == errorResponse) &&
            (identical(other.productResponse, productResponse) ||
                other.productResponse == productResponse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, status, errorResponse, productResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDetailsStateImplCopyWith<_$ProductDetailsStateImpl> get copyWith =>
      __$$ProductDetailsStateImplCopyWithImpl<_$ProductDetailsStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDetailsStateImplToJson(
      this,
    );
  }
}

abstract class _ProductDetailsState implements ProductDetailsState {
  const factory _ProductDetailsState(
      {final ProductDetailsStatus status,
      final ErrorResponse? errorResponse,
      final ProductResponse? productResponse}) = _$ProductDetailsStateImpl;

  factory _ProductDetailsState.fromJson(Map<String, dynamic> json) =
      _$ProductDetailsStateImpl.fromJson;

  @override
  ProductDetailsStatus get status;
  @override
  ErrorResponse? get errorResponse;
  @override
  ProductResponse? get productResponse;
  @override
  @JsonKey(ignore: true)
  _$$ProductDetailsStateImplCopyWith<_$ProductDetailsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
