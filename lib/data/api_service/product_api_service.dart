import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:tr_store/core/endpoints/api_endpoints.dart';
import 'package:tr_store/domain/error_response/error_response.dart';
import 'package:tr_store/domain/product_response/product_response.dart';

abstract class ProductApiService {
  Dio client = Dio(
      BaseOptions(
          baseUrl: ApiEndpoints.baseUrl,
          connectTimeout: const Duration(seconds: 120),
          receiveTimeout: const Duration(seconds: 120),
          responseType: ResponseType.json,
          contentType: "application/json"
      )
  );

  Future<Either<ErrorResponse, List<ProductResponse>>> getAllProducts();
  Future<Either<ErrorResponse, ProductResponse>> getProductDetails({required int postId});
}
