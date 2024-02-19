part of 'cart_bloc.dart';

@freezed
class CartEvent with _$CartEvent {
  const factory CartEvent.productList() = _ProductList;
  const factory CartEvent.addCart({required ProductResponse productResponse}) = _AddCart;
  const factory CartEvent.updateCart({required ProductResponse productResponse}) = _UpdateCart;
  const factory CartEvent.deleteCart({required ProductResponse productResponse}) = _DeleteCart;
}