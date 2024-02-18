// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cart_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() productList,
    required TResult Function(ProductResponse productResponse) addCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? productList,
    TResult? Function(ProductResponse productResponse)? addCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? productList,
    TResult Function(ProductResponse productResponse)? addCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductList value) productList,
    required TResult Function(_AddCart value) addCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductList value)? productList,
    TResult? Function(_AddCart value)? addCart,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductList value)? productList,
    TResult Function(_AddCart value)? addCart,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartEventCopyWith<$Res> {
  factory $CartEventCopyWith(CartEvent value, $Res Function(CartEvent) then) =
      _$CartEventCopyWithImpl<$Res, CartEvent>;
}

/// @nodoc
class _$CartEventCopyWithImpl<$Res, $Val extends CartEvent>
    implements $CartEventCopyWith<$Res> {
  _$CartEventCopyWithImpl(this._value, this._then);

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
    extends _$CartEventCopyWithImpl<$Res, _$ProductListImpl>
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
    return 'CartEvent.productList()';
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
    required TResult Function(ProductResponse productResponse) addCart,
  }) {
    return productList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? productList,
    TResult? Function(ProductResponse productResponse)? addCart,
  }) {
    return productList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? productList,
    TResult Function(ProductResponse productResponse)? addCart,
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
    required TResult Function(_AddCart value) addCart,
  }) {
    return productList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductList value)? productList,
    TResult? Function(_AddCart value)? addCart,
  }) {
    return productList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductList value)? productList,
    TResult Function(_AddCart value)? addCart,
    required TResult orElse(),
  }) {
    if (productList != null) {
      return productList(this);
    }
    return orElse();
  }
}

abstract class _ProductList implements CartEvent {
  const factory _ProductList() = _$ProductListImpl;
}

/// @nodoc
abstract class _$$AddCartImplCopyWith<$Res> {
  factory _$$AddCartImplCopyWith(
          _$AddCartImpl value, $Res Function(_$AddCartImpl) then) =
      __$$AddCartImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProductResponse productResponse});

  $ProductResponseCopyWith<$Res> get productResponse;
}

/// @nodoc
class __$$AddCartImplCopyWithImpl<$Res>
    extends _$CartEventCopyWithImpl<$Res, _$AddCartImpl>
    implements _$$AddCartImplCopyWith<$Res> {
  __$$AddCartImplCopyWithImpl(
      _$AddCartImpl _value, $Res Function(_$AddCartImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productResponse = null,
  }) {
    return _then(_$AddCartImpl(
      productResponse: null == productResponse
          ? _value.productResponse
          : productResponse // ignore: cast_nullable_to_non_nullable
              as ProductResponse,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductResponseCopyWith<$Res> get productResponse {
    return $ProductResponseCopyWith<$Res>(_value.productResponse, (value) {
      return _then(_value.copyWith(productResponse: value));
    });
  }
}

/// @nodoc

class _$AddCartImpl implements _AddCart {
  const _$AddCartImpl({required this.productResponse});

  @override
  final ProductResponse productResponse;

  @override
  String toString() {
    return 'CartEvent.addCart(productResponse: $productResponse)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddCartImpl &&
            (identical(other.productResponse, productResponse) ||
                other.productResponse == productResponse));
  }

  @override
  int get hashCode => Object.hash(runtimeType, productResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddCartImplCopyWith<_$AddCartImpl> get copyWith =>
      __$$AddCartImplCopyWithImpl<_$AddCartImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() productList,
    required TResult Function(ProductResponse productResponse) addCart,
  }) {
    return addCart(productResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? productList,
    TResult? Function(ProductResponse productResponse)? addCart,
  }) {
    return addCart?.call(productResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? productList,
    TResult Function(ProductResponse productResponse)? addCart,
    required TResult orElse(),
  }) {
    if (addCart != null) {
      return addCart(productResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProductList value) productList,
    required TResult Function(_AddCart value) addCart,
  }) {
    return addCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ProductList value)? productList,
    TResult? Function(_AddCart value)? addCart,
  }) {
    return addCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ProductList value)? productList,
    TResult Function(_AddCart value)? addCart,
    required TResult orElse(),
  }) {
    if (addCart != null) {
      return addCart(this);
    }
    return orElse();
  }
}

abstract class _AddCart implements CartEvent {
  const factory _AddCart({required final ProductResponse productResponse}) =
      _$AddCartImpl;

  ProductResponse get productResponse;
  @JsonKey(ignore: true)
  _$$AddCartImplCopyWith<_$AddCartImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CartState _$CartStateFromJson(Map<String, dynamic> json) {
  return _CartState.fromJson(json);
}

/// @nodoc
mixin _$CartState {
  CartStatus get status => throw _privateConstructorUsedError;
  List<ProductResponse>? get listOfProducts =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CartStateCopyWith<CartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CartStateCopyWith<$Res> {
  factory $CartStateCopyWith(CartState value, $Res Function(CartState) then) =
      _$CartStateCopyWithImpl<$Res, CartState>;
  @useResult
  $Res call({CartStatus status, List<ProductResponse>? listOfProducts});
}

/// @nodoc
class _$CartStateCopyWithImpl<$Res, $Val extends CartState>
    implements $CartStateCopyWith<$Res> {
  _$CartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? listOfProducts = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CartStatus,
      listOfProducts: freezed == listOfProducts
          ? _value.listOfProducts
          : listOfProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductResponse>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CartStateImplCopyWith<$Res>
    implements $CartStateCopyWith<$Res> {
  factory _$$CartStateImplCopyWith(
          _$CartStateImpl value, $Res Function(_$CartStateImpl) then) =
      __$$CartStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({CartStatus status, List<ProductResponse>? listOfProducts});
}

/// @nodoc
class __$$CartStateImplCopyWithImpl<$Res>
    extends _$CartStateCopyWithImpl<$Res, _$CartStateImpl>
    implements _$$CartStateImplCopyWith<$Res> {
  __$$CartStateImplCopyWithImpl(
      _$CartStateImpl _value, $Res Function(_$CartStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? listOfProducts = freezed,
  }) {
    return _then(_$CartStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CartStatus,
      listOfProducts: freezed == listOfProducts
          ? _value._listOfProducts
          : listOfProducts // ignore: cast_nullable_to_non_nullable
              as List<ProductResponse>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CartStateImpl implements _CartState {
  const _$CartStateImpl(
      {this.status = CartStatus.initial,
      final List<ProductResponse>? listOfProducts})
      : _listOfProducts = listOfProducts;

  factory _$CartStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$CartStateImplFromJson(json);

  @override
  @JsonKey()
  final CartStatus status;
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
    return 'CartState(status: $status, listOfProducts: $listOfProducts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CartStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._listOfProducts, _listOfProducts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status,
      const DeepCollectionEquality().hash(_listOfProducts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      __$$CartStateImplCopyWithImpl<_$CartStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CartStateImplToJson(
      this,
    );
  }
}

abstract class _CartState implements CartState {
  const factory _CartState(
      {final CartStatus status,
      final List<ProductResponse>? listOfProducts}) = _$CartStateImpl;

  factory _CartState.fromJson(Map<String, dynamic> json) =
      _$CartStateImpl.fromJson;

  @override
  CartStatus get status;
  @override
  List<ProductResponse>? get listOfProducts;
  @override
  @JsonKey(ignore: true)
  _$$CartStateImplCopyWith<_$CartStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
