import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:tr_store/presentation/bloc/product_bloc/product_bloc.dart';
import 'package:tr_store/presentation/navigation/page_name.dart';

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
        title: const Text("Product"),
      ),
      body: BlocBuilder<ProductBloc, ProductState>(builder: (context, state) {
        if (state.status == ProductStatus.success) {
          return ListView.builder(
              itemCount: state.listOfProducts?.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (){
                    context.push(PagesName.productDetailsPage.path,extra: state.listOfProducts?[index]);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    margin: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1,color: Colors.black)
                    ),
                    child: Text(state.listOfProducts?[index].title ?? ""),
                  ),
                );
              });
        }
        return const SizedBox();
      }),
    );
  }
}
