import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tr_store/data/database/entity/product_entity.dart';
import 'package:tr_store/data/repository/product_repository.dart';
import 'package:tr_store/domain/product_response/product_response.dart';


part 'cart_event.dart';
part 'cart_state.dart';
part 'cart_bloc.freezed.dart';
part 'cart_bloc.g.dart';

@injectable
class CartBloc extends Bloc<CartEvent, CartState> {
  final ProductRepository repository;
  CartBloc(this.repository) : super(const CartState()) {
    on<CartEvent>((event, emit) async {
      await event.map(productList: (_ProductList req) async {
        emit(state.copyWith(status: CartStatus.loading));
        final result = await repository.getAllCartProducts();
        var listOfProductEntity = result.map((element) => ProductEntity(
          id: element.id,
          slug: element.slug,
          title: element.title,
          content: element.content,
          image: element.image,
          thumbnail: element.thumbnail,
          status: element.status,
          category: element.category,
          publishedAt: element.publishedAt,
          updatedAt: element.updatedAt,
          userId: element.userId,
          count: element.count
        )).toList();
        emit(state.copyWith(status: CartStatus.success,listOfProducts: listOfProductEntity));
      }, addCart: (_AddCart req) async {
        emit(const CartState());
        await repository.addProduct(productResponse: req.productResponse);
        emit(
          state.copyWith(
            status: CartStatus.success,
          ),
        );
        add(const CartEvent.productList());
      });
    });
  }
}
