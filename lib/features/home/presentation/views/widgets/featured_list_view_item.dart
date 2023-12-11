import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
class FeaturedBookItem extends StatelessWidget {
  const FeaturedBookItem({Key? key, required this.image}) : super(key: key);
final String image;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6/4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: image,
        ),
      )
    );
  }
}
