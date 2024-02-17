import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:tr_store/core/endpoints/api_endpoints.dart';
import 'package:tr_store/data/api_service/product_api_service.dart';
import 'package:tr_store/domain/error_response/error_response.dart';
import 'package:tr_store/domain/product_response/product_response.dart';

@LazySingleton(as: ProductApiService)
class IProductApiService extends ProductApiService {
  ErrorResponse checkResponseError(DioException err) {
    if (err.type == DioExceptionType.badResponse) {
      var errorData = err.response?.data;
      var errorModel = ErrorResponse.fromJson(errorData);
      return errorModel;
    } else {
      return const ErrorResponse();
    }
  }

  @override
  Future<Either<ErrorResponse, List<ProductResponse>>> getAllProducts() async {
    try {
      var headers = {'Accept': 'application/json'};
      Response response = await client.get(ApiEndpoints.postsUrl,
          options: Options(headers: headers));
      var result = List<ProductResponse>.from(
          response.data.map((x) => ProductResponse.fromJson(x)));
      return right(result);
    } on DioException catch (e) {
      return left(checkResponseError(e));
    }
  }

  @override
  Future<Either<ErrorResponse, ProductResponse>> getProductDetails(
      {required int postId}) async {
    try {
      var headers = {'Accept': 'application/json'};
      Response response = await client.get(
          ApiEndpoints.postDetailsUrl(postId: postId),
          options: Options(headers: headers));
      var result = ProductResponse.fromJson(response.data);
      return right(result);
    } on DioException catch (e) {
      return left(checkResponseError(e));
    }
  }
}
