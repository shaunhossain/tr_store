import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:tr_store/data/repository/product_repository.dart';
import 'package:tr_store/domain/error_response/error_response.dart';
import 'package:tr_store/domain/product_response/product_response.dart';

part 'product_event.dart';
part 'product_state.dart';
part 'product_bloc.freezed.dart';
part 'product_bloc.g.dart';

@injectable
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRepository repository;
  ProductBloc(this.repository) : super(const ProductState()) {
    on<ProductEvent>((event, emit) async {

    });
  }
}
