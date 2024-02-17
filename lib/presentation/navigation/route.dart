
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tr_store/domain/product_response/product_response.dart';
import 'package:tr_store/presentation/navigation/page_name.dart';
import 'package:tr_store/presentation/ui/pages/cart_page.dart';
import 'package:tr_store/presentation/ui/pages/product_details_page.dart';
import 'package:tr_store/presentation/ui/pages/product_page.dart';
import 'package:tr_store/presentation/ui/pages/splash_page.dart';

final _rootNavigatorKey = GlobalKey<NavigatorState>();


final GoRouter router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: PagesName.productPage.path,
  routes: [
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: PagesName.splashPage.path,
      builder: (BuildContext context, GoRouterState state) {
        return const SplashPage();
      },
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: PagesName.productPage.path,
      builder: (BuildContext context, GoRouterState state) {
        return const ProductPage();
      },
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: PagesName.productDetailsPage.path,
      builder: (BuildContext context, GoRouterState state) {
        final product = state.extra as ProductResponse;
        return ProductDetailsPage(productResponse: product,);
      },
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: PagesName.cartPage.path,
      builder: (BuildContext context, GoRouterState state) {
        return const CartPage();
      },
    ),
  ],
);
