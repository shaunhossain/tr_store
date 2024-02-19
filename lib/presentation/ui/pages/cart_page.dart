import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tr_store/data/database/helper/db_instance.dart';
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
  StreamController<List<ProductResponse>> controller =
      StreamController<List<ProductResponse>>();

  @override
  void initState() {
    context.read<CartBloc>().add(const CartEvent.productList());
    controller.addStream(productDatabase
        .select(productDatabase.product)
        .map((item) => ProductResponse(
              id: item.id,
              slug: item.slug,
              title: item.title,
              content: item.content,
              image: item.image,
              thumbnail: item.thumbnail,
              status: item.status,
              category: item.category,
              publishedAt: item.publishedAt,
              updatedAt: item.updatedAt,
              userId: item.userId,
              count: item.count,
            ))
        .watch());
    super.initState();
  }

  void add({required ProductResponse productResponse}) {
    productCount = productResponse.count ?? 0;
    setState(() {
      if (productCount < 100) {
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          slivers: [
            StreamBuilder(
                stream: controller.stream,
                builder: (context, data) {
                  return SliverList.builder(
                      itemCount: data.data?.length,
                      itemBuilder: (context, index) {
                        return CartItem(
                          item: data.data?[index],
                          deleteItem: () {
                            context.read<CartBloc>().add(CartEvent.deleteCart(
                                productResponse: data.data![index]));
                          },
                          minusItem: () {
                            remove(productResponse: data.data![index]);
                          },
                          addItem: () {
                            add(productResponse: data.data![index]);
                          },
                        );
                      });
                }),
            SliverToBoxAdapter(
              child: CustomMyCartFooter(checkOut: () {}, price: 0),
            )
          ],
        ),
      ),
    );
  }
}
