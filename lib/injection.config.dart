// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core/endpoints/api_endpoints.dart' as _i3;
import 'data/api_service/i_product_api_service.dart' as _i5;
import 'data/api_service/product_api_service.dart' as _i4;
import 'data/repository/product_repository.dart' as _i6;
import 'presentation/bloc/product_bloc/product_bloc.dart' as _i7;
import 'presentation/bloc/product_details_bloc/product_details_bloc.dart'
    as _i8;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.ApiEndpoints>(() => _i3.ApiEndpoints());
  gh.lazySingleton<_i4.ProductApiService>(() => _i5.IProductApiService());
  gh.lazySingleton<_i6.ProductRepository>(
      () => _i6.IProductRepository(gh<_i4.ProductApiService>()));
  gh.factory<_i7.ProductBloc>(
      () => _i7.ProductBloc(gh<_i6.ProductRepository>()));
  gh.factory<_i8.ProductDetailsBloc>(
      () => _i8.ProductDetailsBloc(gh<_i6.ProductRepository>()));
  return getIt;
}
