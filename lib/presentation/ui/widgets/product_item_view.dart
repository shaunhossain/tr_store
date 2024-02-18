import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tr_store/core/styles.dart';

class ProductItemView extends StatelessWidget {
  const ProductItemView({super.key, required this.onTap, required this.title, required this.thumbnail, required this.slug, required this.id, required this.addCart});
  final Function() onTap;
  final String title;
  final String thumbnail;
  final String slug;
  final String id;
  final Function() addCart;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
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
                      child: CachedNetworkImage(
                        imageUrl: thumbnail,
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
              Text(
                title,
                overflow: TextOverflow.ellipsis,
                style: ibmPlexSansH5Style(Colors.black),
              ),
              Text(
                slug,
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
                          id,
                          style: ibmPlexSansH4Style(Colors.black),
                        )
                      ],
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  IconButton(
                    onPressed: addCart,
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
      ),
    );
  }
}
