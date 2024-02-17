import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tr_store/core/styles.dart';
import 'package:tr_store/domain/product_response/product_response.dart';
import 'package:tr_store/presentation/bloc/product_details_bloc/product_details_bloc.dart';
import 'package:tr_store/presentation/navigation/page_name.dart';
import 'package:tr_store/presentation/ui/widgets/loading_indicator.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key, required this.productResponse});
  final ProductResponse productResponse;

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  void initState() {
    context.read<ProductDetailsBloc>().add(
        ProductDetailsEvent.getProductInfo(postId: widget.productResponse.id!));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.productResponse.title ?? ""),
        actions: [
          IconButton(
              onPressed: () {
                context.push(PagesName.cartPage.path);
              },
              icon: const Icon(Icons.shopping_cart_checkout))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: BlocBuilder<ProductDetailsBloc, ProductDetailsState>(
            builder: (context, state) {
          if (state.status == ProductDetailsStatus.loading) {
            return const LoadingIndicator();
          }
          if (state.status == ProductDetailsStatus.success) {
            return SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: AspectRatio(
                          aspectRatio: 1.6,
                          child: CachedNetworkImage(
                            imageUrl: state.productResponse?.image ?? "",
                            fit: BoxFit.fill,
                            placeholder: (context, url) => const Center(
                                child: SizedBox(
                                    width: 16,
                                    height: 16,
                                    child: CircularProgressIndicator(
                                      strokeWidth: 1,
                                    ))),
                            errorWidget: (context, url, error) => Icon(
                              Icons.error,
                              color: Theme.of(context).highlightColor,
                            ),
                          ),
                        )),
                  ),
                  Text(
                    state.productResponse?.title ?? "",
                    style: ibmPlexSansH5Style(Colors.black),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        state.productResponse?.category ?? "",
                        style: ibmPlexSansBLRegularStyle(Colors.grey),
                      ),
                      Text(
                        state.productResponse?.slug ?? "",
                        style: ibmPlexSansBLRegularStyle(Colors.grey),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    state.productResponse?.content ?? "",
                    style: ibmPlexSansBSRegularStyle(Colors.black),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text.rich(
                        TextSpan(
                          children: [
                            TextSpan(
                              text: '\$',
                              style: ibmPlexSansH6RegularStyle(Colors.black),
                            ),
                            TextSpan(
                              text: "${state.productResponse?.id ?? ""}",
                              style: ibmPlexSansH4Style(Colors.black),
                            )
                          ],
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 1, color: Colors.grey)),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.remove)),
                            Text(
                              "1",
                              style: ibmPlexSansH6Style(Colors.black),
                            ),
                            IconButton(
                                onPressed: () {}, icon: const Icon(Icons.add)),
                          ],
                        ),
                      ),
                      ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            "Buy Now",
                            style: ibmPlexSansBMStyle(Colors.white),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            );
          }
          return const SizedBox();
        }),
      ),
    );
  }
}
