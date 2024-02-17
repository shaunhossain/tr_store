import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tr_store/core/styles.dart';
import 'package:tr_store/presentation/bloc/product_bloc/product_bloc.dart';
import 'package:tr_store/presentation/navigation/page_name.dart';
import 'package:tr_store/presentation/ui/widgets/loading_indicator.dart';
import 'package:tr_store/presentation/ui/widgets/product_item_view.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  void initState() {
    context.read<ProductBloc>().add(const ProductEvent.productList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        actions: [
          IconButton(
              onPressed: () {
                context.push(PagesName.cartPage.path);
              },
              icon: const Icon(Icons.shopping_cart_checkout))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16),
        child:
            BlocBuilder<ProductBloc, ProductState>(builder: (context, state) {
          if (state.status == ProductStatus.loading) {
            return const LoadingIndicator();
          }
          if (state.status == ProductStatus.success) {
            return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.62,
                    crossAxisSpacing: 30,
                    mainAxisSpacing: 30),
                itemCount: state.listOfProducts?.length,
                itemBuilder: (context, index) {
                  return ProductItemView(
                      onTap: () {
                        context.push(PagesName.productDetailsPage.path,
                            extra: state.listOfProducts?[index]);
                      },
                      title: state.listOfProducts?[index].title ?? "",
                      thumbnail: state.listOfProducts?[index].thumbnail ?? "",
                      slug: state.listOfProducts?[index].slug ?? "",
                      id: "${state.listOfProducts?[index].id ?? ""}",
                      addCart: () {});
                });
          }
          return const SizedBox();
        }),
      ),
    );
  }
}
