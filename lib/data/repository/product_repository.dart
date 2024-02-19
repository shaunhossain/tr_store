import 'package:dartz/dartz.dart';
import 'package:drift/drift.dart';
import 'package:injectable/injectable.dart';
import 'package:tr_store/data/api_service/product_api_service.dart';
import 'package:tr_store/data/database/helper/db_instance.dart';
import 'package:tr_store/data/database/product_database.dart';
import 'package:tr_store/domain/error_response/error_response.dart';
import 'package:tr_store/domain/product_response/product_response.dart';

abstract class ProductRepository {
  final ProductApiService productApiService;

  ProductRepository(this.productApiService);

  Future<Either<ErrorResponse, List<ProductResponse>>> getAllProducts();

  Future<Either<ErrorResponse, ProductResponse>> getProductDetails(
      {required int postId});
  Future<int> addProduct({required ProductResponse productResponse});
  Future<void> updateProduct({required ProductResponse productResponse});
  Future<void> deleteProduct({required ProductResponse productResponse});

  Future<List<ProductData>> getAllCartProducts();
}

@LazySingleton(as: ProductRepository)
class IProductRepository extends ProductRepository {
  IProductRepository(super.productApiService);

  @override
  Future<Either<ErrorResponse, List<ProductResponse>>> getAllProducts() {
    return productApiService.getAllProducts();
  }

  @override
  Future<Either<ErrorResponse, ProductResponse>> getProductDetails(
      {required int postId}) {
    return productApiService.getProductDetails(postId: postId);
  }

  @override
  Future<int> addProduct({required ProductResponse productResponse}) async {
    var product = ProductCompanion.insert(
      id: Value(productResponse.id ?? 0),
      slug: Value(productResponse.slug),
      title: Value(productResponse.title),
      content: Value(productResponse.content),
      image: Value(productResponse.image),
      thumbnail: Value(productResponse.thumbnail),
      status: Value(productResponse.status),
      category: Value(productResponse.category),
      publishedAt: Value(productResponse.publishedAt),
      updatedAt: Value(productResponse.updatedAt),
      userId: Value(productResponse.userId),
      count: Value(productResponse.count ?? 1),
    );
    return await productDatabase
        .into(productDatabase.product)
        .insertOnConflictUpdate(product);
  }

  @override
  Future<List<ProductData>> getAllCartProducts() async {
    List<ProductData> allItems =
        await productDatabase.select(productDatabase.product).get();
    return allItems;
  }

  @override
  Future<void> deleteProduct({required ProductResponse productResponse}) async {
    await (productDatabase.product
        .deleteWhere((t) => t.id.equals(productResponse.id ?? 0)));
  }

  @override
  Future<void> updateProduct({required ProductResponse productResponse}) async {
    var product = ProductData(
      id: productResponse.id ?? 0,
      count: productResponse.count,
      slug: productResponse.slug,
      title: productResponse.title,
      content: productResponse.content,
      image: productResponse.image,
      thumbnail: productResponse.thumbnail,
      status: productResponse.status,
      category: productResponse.category,
      publishedAt: productResponse.publishedAt,
      updatedAt: productResponse.updatedAt,
      userId: productResponse.userId,
    );
    await (productDatabase.product.update().replace(product));
  }
}
