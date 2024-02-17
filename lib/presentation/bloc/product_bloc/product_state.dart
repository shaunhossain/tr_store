part of 'product_bloc.dart';

enum ProductStatus {
  initial,
  loading,
  success,
  error;

  bool get isInitial => this == ProductStatus.initial;
  bool get isLoading => this == ProductStatus.loading;
  bool get isSuccess => this == ProductStatus.success;
  bool get isFailure => this == ProductStatus.error;
}

@freezed
class ProductState with _$ProductState {
  const factory ProductState({
    @Default(ProductStatus.initial) ProductStatus status,
    ErrorResponse? errorResponse,
    List<ProductResponse>? listOfProducts,
  }) = _ProductState;

  factory ProductState.fromJson(Map<String, dynamic> json) =>
      _$ProductStateFromJson(json);
}