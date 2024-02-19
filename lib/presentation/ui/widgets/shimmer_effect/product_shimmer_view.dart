import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tr_store/core/styles.dart';

class ProductShimmerView extends StatelessWidget {
  const ProductShimmerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      color: Colors.grey,
                    ),
                  )),
            ),
            Text(
              "",
              overflow: TextOverflow.ellipsis,
              style: ibmPlexSansH5Style(Colors.black),
            ),
            Text(
              "",
              overflow: TextOverflow.ellipsis,
              style: ibmPlexSansBSRegularStyle(Colors.grey),
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
                        text:
                        "",
                        style: ibmPlexSansH4Style(Colors.black),
                      )
                    ],
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                IconButton(
                  onPressed: (){},
                  icon: const Icon(Icons.add),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    )),
                    backgroundColor:
                    MaterialStateProperty.all(Theme.of(context).primaryColorLight),
                    iconColor: MaterialStateProperty.all(Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
