import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tr_store/core/size_config.dart';
import 'package:tr_store/core/styles.dart';
import 'package:tr_store/domain/product_response/product_response.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key, required this.item, required this.deleteItem, required this.minusItem, required this.addItem});
  final ProductResponse? item;
  final Function() minusItem;
  final Function() addItem;
  final Function() deleteItem;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: CachedNetworkImage(
                        imageUrl: item?.thumbnail ?? "",
                        fit: BoxFit.fill,
                        placeholder: (context, url) =>
                        const Center(
                            child: SizedBox(
                                width: 16,
                                height: 16,
                                child:
                                CircularProgressIndicator(
                                  strokeWidth: 1,
                                ))),
                        errorWidget: (context, url, error) =>
                            Icon(
                              Icons.error,
                              color: Theme.of(context).highlightColor,
                            ),
                      ),
                    )),
              ),
            ),
            Expanded(
              flex: 5,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: SizeConfig.width! * 0.34,
                        child: Text(
                            item?.title ?? "",
                            style: ibmPlexSansBSStyle(Colors.black),),
                      ),
                      IconButton(
                          onPressed: deleteItem,
                          icon: const Icon(Icons.delete_outline))
                    ],
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'slug : ${item?.slug}',style: ibmPlexSansBSStyle(Colors.black),),
                      Text(
                          'Total : ${item?.count}',style: ibmPlexSansBSStyle(Colors.black),),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('\u0024${item?.userId}',style: ibmPlexSansBSStyle(Colors.black),),
                      SizedBox(
                        width: SizeConfig.width! * 0.05,
                      ),
                      Container(
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            border: Border.all(width: 1, color: Colors.grey)),
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: minusItem,
                                icon: const Icon(Icons.remove)),
                            Text(
                              "${item?.count ?? 0}",
                              style: ibmPlexSansH6Style(Colors.black),
                            ),
                            IconButton(
                                onPressed: addItem, icon: const Icon(Icons.add)),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
