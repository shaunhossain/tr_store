import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tr_store/data/repository/product_repository.dart';
import 'package:tr_store/domain/error_response/error_response.dart';
import 'package:tr_store/domain/product_response/product_response.dart';

part 'product_details_event.dart';
part 'product_details_state.dart';
part 'product_details_bloc.freezed.dart';
part 'product_details_bloc.g.dart';

@injectable
class ProductDetailsBloc extends Bloc<ProductDetailsEvent, ProductDetailsState> {
  final ProductRepository repository;
  ProductDetailsBloc(this.repository) : super(const ProductDetailsState()) {
    on<ProductDetailsEvent>((event, emit) async {
      await event.map(getProductInfo: (_GetProductInfo req) async {
        emit(state.copyWith(status: ProductDetailsStatus.loading));

        final result = await repository.getProductDetails(postId: req.postId);

        result.fold(
              (l) => emit(
            state.copyWith(
              errorResponse: l,
              status: ProductDetailsStatus.error,
            ),
          ),
              (r) => emit(
            state.copyWith(
              productResponse: r,
              status: ProductDetailsStatus.success,
            ),
          ),
        );
      });
    });
  }
}
