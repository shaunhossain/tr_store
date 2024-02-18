part of 'cart_bloc.dart';

enum CartStatus {
  initial,
  loading,
  success,
  error;

  bool get isInitial => this == CartStatus.initial;
  bool get isLoading => this == CartStatus.loading;
  bool get isSuccess => this == CartStatus.success;
  bool get isFailure => this == CartStatus.error;
}

@freezed
class CartState with _$CartState {
  const factory CartState({
    @Default(CartStatus.initial) CartStatus status,
    List<ProductEntity>? listOfProducts,
  }) = _CartState;

  factory CartState.fromJson(Map<String, dynamic> json) =>
      _$CartStateFromJson(json);
}