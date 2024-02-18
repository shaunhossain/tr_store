import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tr_store/core/app_themes.dart';
import 'package:tr_store/core/size_config.dart';
import 'package:tr_store/injection.dart';
import 'package:tr_store/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:tr_store/presentation/bloc/product_bloc/product_bloc.dart';
import 'package:tr_store/presentation/bloc/product_details_bloc/product_details_bloc.dart';
import 'package:tr_store/presentation/navigation/route.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<ProductBloc>()),
        BlocProvider(create: (context) => getIt<ProductDetailsBloc>()),
        BlocProvider(create: (context) => getIt<CartBloc>()),
      ],
      child: MaterialApp.router(
        title: 'Tr Store',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.light,
        routerConfig: router,
      ),
    );
  }
}
