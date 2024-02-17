// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() productList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? productList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? productList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductList value) productList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductList value)? productList,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductList value)? productList,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ProductListImplCopyWith<$Res> {
  factory _$$ProductListImplCopyWith(
          _$ProductListImpl value, $Res Function(_$ProductListImpl) then) =
      __$$ProductListImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ProductListImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$ProductListImpl>
    implements _$$ProductListImplCopyWith<$Res> {
  __$$ProductListImplCopyWithImpl(
      _$ProductListImpl _value, $Res Function(_$ProductListImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ProductListImpl implements _ProductList {
  const _$ProductListImpl();

  @override
  String toString() {
    return 'ProductEvent.productList()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ProductListImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() productList,
  }) {
    return productList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? productList,
  }) {
    return productList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? productList,
    required TResult orElse(),
  }) {
    if (productList != null) {
      return productList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductList value) productList,
  }) {
    return productList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductList value)? productList,
  }) {
    return productList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductList value)? productList,
    required TResult orElse(),
  }) {
    if (productList != null) {
      return productList(this);
    }
    return orElse();
  }
}

abstract class _ProductList implements ProductEvent {
  const factory _ProductList() = _$ProductListImpl;
}

ProductState _$ProductStateFromJson(Map<String, dynamic> json) {
  return _ProductState.fromJson(json);
}

/// @nodoc
mixin _$ProductState {
  ProductStatus get status => throw _privateConstructorUsedError;
  ErrorResponse? get errorResponse => throw _privateConstructorUsedError;
  List<ProductResponse>? get listOfProducts =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProductStateCopyWith<ProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
  @useResult
  $Res call(
      {ProductStatus status,
      ErrorResponse? errorResponse,
      List<ProductResponse>? listOfProducts});

  $ErrorResponseCopyWith<$Res>? get errorResponse;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorResponse = freezed,
    Object? listOfProducts = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductStatus,
      errorResponse: freezed == errorResponse
          ? _value.errorResponse
          : errorResponse // ignore: cast_nullable_to_non_nullable
              as ErrorResponse?,
      listOfProducts: freezed == listOfProducts
          ? _value.listOfProducts
          : listOfProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductResponse>?,
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
}

/// @nodoc
abstract class _$$ProductStateImplCopyWith<$Res>
    implements $ProductStateCopyWith<$Res> {
  factory _$$ProductStateImplCopyWith(
          _$ProductStateImpl value, $Res Function(_$ProductStateImpl) then) =
      __$$ProductStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductStatus status,
      ErrorResponse? errorResponse,
      List<ProductResponse>? listOfProducts});

  @override
  $ErrorResponseCopyWith<$Res>? get errorResponse;
}

/// @nodoc
class __$$ProductStateImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$ProductStateImpl>
    implements _$$ProductStateImplCopyWith<$Res> {
  __$$ProductStateImplCopyWithImpl(
      _$ProductStateImpl _value, $Res Function(_$ProductStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? errorResponse = freezed,
    Object? listOfProducts = freezed,
  }) {
    return _then(_$ProductStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ProductStatus,
      errorResponse: freezed == errorResponse
          ? _value.errorResponse
          : errorResponse // ignore: cast_nullable_to_non_nullable
              as ErrorResponse?,
      listOfProducts: freezed == listOfProducts
          ? _value._listOfProducts
          : listOfProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductStateImpl implements _ProductState {
  const _$ProductStateImpl(
      {this.status = ProductStatus.initial,
      this.errorResponse,
      final List<ProductResponse>? listOfProducts})
      : _listOfProducts = listOfProducts;

  factory _$ProductStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductStateImplFromJson(json);

  @override
  @JsonKey()
  final ProductStatus status;
  @override
  final ErrorResponse? errorResponse;
  final List<ProductResponse>? _listOfProducts;
  @override
  List<ProductResponse>? get listOfProducts {
    final value = _listOfProducts;
    if (value == null) return null;
    if (_listOfProducts is EqualUnmodifiableListView) return _listOfProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProductState(status: $status, errorResponse: $errorResponse, listOfProducts: $listOfProducts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.errorResponse, errorResponse) ||
                other.errorResponse == errorResponse) &&
            const DeepCollectionEquality()
                .equals(other._listOfProducts, _listOfProducts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, errorResponse,
      const DeepCollectionEquality().hash(_listOfProducts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductStateImplCopyWith<_$ProductStateImpl> get copyWith =>
      __$$ProductStateImplCopyWithImpl<_$ProductStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductStateImplToJson(
      this,
    );
  }
}

abstract class _ProductState implements ProductState {
  const factory _ProductState(
      {final ProductStatus status,
      final ErrorResponse? errorResponse,
      final List<ProductResponse>? listOfProducts}) = _$ProductStateImpl;

  factory _ProductState.fromJson(Map<String, dynamic> json) =
      _$ProductStateImpl.fromJson;

  @override
  ProductStatus get status;
  @override
  ErrorResponse? get errorResponse;
  @override
  List<ProductResponse>? get listOfProducts;
  @override
  @JsonKey(ignore: true)
  _$$ProductStateImplCopyWith<_$ProductStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
