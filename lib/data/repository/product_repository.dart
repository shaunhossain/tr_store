import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tr_store/data/api_service/product_api_service.dart';
import 'package:tr_store/domain/error_response/error_response.dart';
import 'package:tr_store/domain/product_response/product_response.dart';

abstract class ProductRepository {
  final ProductApiService productApiService;

  ProductRepository(this.productApiService);

  Future<Either<ErrorResponse, List<ProductResponse>>> getAllProducts();

  Future<Either<ErrorResponse, ProductResponse>> getProductDetails(
      {required int postId});
}

@LazySingleton(as: ProductRepository)
class IProductRepository extends ProductRepository {
  IProductRepository(super.productApiService);

  @override
  Future<Either<ErrorResponse, List<ProductResponse>>> getAllProducts() {
    return productApiService.getAllProducts();
  }

  @override
  Future<Either<ErrorResponse, ProductResponse>> getProductDetails({required int postId}) {
    return productApiService.getProductDetails(postId: postId);
  }
}
