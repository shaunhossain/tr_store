import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tr_store/domain/product_response/product_response.dart';
import 'package:tr_store/presentation/bloc/cart_bloc/cart_bloc.dart';
import 'package:tr_store/presentation/ui/widgets/cart_item.dart';
import 'package:tr_store/presentation/ui/widgets/custom_my_cart_footer.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  int productCount = 1;

  @override
  void initState() {
    context.read<CartBloc>().add(const CartEvent.productList());
    super.initState();
  }

  void add({required ProductResponse productResponse}) {
    productCount = productResponse.count ?? 0;
    setState(() {
      if (productCount < 10) {
        productCount = productCount + 1;
      }
    });
    context.read<CartBloc>().add(CartEvent.updateCart(
        productResponse: productResponse.copyWith(count: productCount)));
  }

  void remove({required ProductResponse productResponse}) {
    productCount = productResponse.count ?? 0;
    setState(() {
      if (productCount > 1) {
        productCount = productCount - 1;
      }
    });
    context.read<CartBloc>().add(CartEvent.updateCart(
        productResponse: productResponse.copyWith(count: productCount)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Cart"),
      ),
      body: BlocBuilder<CartBloc, CartState>(builder: (context, state) {
        if (state.status == CartStatus.success) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: CustomScrollView(
              slivers: [
                SliverList.builder(
                    itemCount: state.listOfProducts?.length,
                    itemBuilder: (context, index) {
                      return CartItem(
                        item: state.listOfProducts?[index],
                        deleteItem: () {
                          context.read<CartBloc>().add(CartEvent.deleteCart(
                              productResponse: state.listOfProducts![index]));
                        },
                        minusItem: (){
                          remove(productResponse: state.listOfProducts![index]);
                        },
                        addItem: () {
                          add(productResponse: state.listOfProducts![index]);
                        },
                      );
                    }),
                  SliverToBoxAdapter(
                    child: CustomMyCartFooter(checkOut: (){}, price: 0),
                  )
                ],
            ),
          );
        }
        return const SizedBox();
      }),
    );
  }
}
