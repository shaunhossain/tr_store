part of 'product_details_bloc.dart';

enum ProductDetailsStatus {
  initial,
  loading,
  success,
  error;

  bool get isInitial => this == ProductDetailsStatus.initial;
  bool get isLoading => this == ProductDetailsStatus.loading;
  bool get isSuccess => this == ProductDetailsStatus.success;
  bool get isFailure => this == ProductDetailsStatus.error;
}

@freezed
class ProductDetailsState with _$ProductDetailsState {
  const factory ProductDetailsState({
    @Default(ProductDetailsStatus.initial) ProductDetailsStatus status,
    ErrorResponse? errorResponse,
    ProductResponse? productResponse,
  }) = _ProductDetailsState;

  factory ProductDetailsState.fromJson(Map<String, dynamic> json) =>
      _$ProductDetailsStateFromJson(json);
}