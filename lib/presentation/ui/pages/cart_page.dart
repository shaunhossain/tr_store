import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tr_store/presentation/bloc/cart_bloc/cart_bloc.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  void initState() {
    context.read<CartBloc>().add(const CartEvent.productList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<CartBloc, CartState>(builder: (context, state) {
        if (state.status == CartStatus.success) {
          return ListView.builder(
              itemCount: state.listOfProducts?.length,
              itemBuilder: (context, index) {
                return Text(state.listOfProducts?[index].title ?? "");
              });
        }
        return const SizedBox();
      }),
    );
  }
}
