import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tr_store/domain/product_response/product_response.dart';
import 'package:tr_store/presentation/bloc/product_details_bloc/product_details_bloc.dart';

class ProductDetailsPage extends StatefulWidget {
  const ProductDetailsPage({super.key, required this.productResponse});
  final ProductResponse productResponse;

  @override
  State<ProductDetailsPage> createState() => _ProductDetailsPageState();
}

class _ProductDetailsPageState extends State<ProductDetailsPage> {
  @override
  void initState() {
    context.read<ProductDetailsBloc>().add(ProductDetailsEvent.getProductInfo(postId: widget.productResponse.id!));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.productResponse.title ?? ""),
      ),
      body: BlocBuilder<ProductDetailsBloc, ProductDetailsState>(builder: (context, state) {
        if (state.status == ProductDetailsStatus.success) {
          return Text(state.productResponse?.title ?? "");
        }
        return const SizedBox();
      }),
    );
  }
}
