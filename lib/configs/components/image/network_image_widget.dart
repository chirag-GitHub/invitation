import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

//custom network image widget, we will used this widget show images, also handled exceptions
// this widget is generic, we can change it and this change will appear across the app
class NetworkImageWidget extends StatelessWidget {
  final String imageUrl;
  final double width, height, iconSize;
  final BoxFit boxFit;
  final Color color;
  final BorderRadius? borderRadius;

  const NetworkImageWidget(
      {super.key,
      required this.imageUrl,
      this.width = 40,
      this.height = 40,
      this.borderRadius,
      this.iconSize = 20,
      this.boxFit = BoxFit.cover,
      this.color = Colors.transparent});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius ?? BorderRadius.circular(8),
      child: imageUrl == ''
          ? Container(
              width: width,
              height: height,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: borderRadius ?? BorderRadius.circular(8),
              ),
              child: Icon(
                Icons.person_outline,
                size: iconSize,
              ))
          : CachedNetworkImage(
              imageUrl: imageUrl,
              width: width,
              height: height,
              imageBuilder: (context, imageProvider) => Container(
                width: width,
                height: height,
                decoration: BoxDecoration(
                  borderRadius: borderRadius ?? BorderRadius.circular(8),
                  image: DecorationImage(
                      image: imageProvider,
                      fit: boxFit,
                      colorFilter: ColorFilter.mode(color, BlendMode.srcATop)),
                ),
              ),
              placeholder: (context, url) => Shimmer.fromColors(
                baseColor:
                    Theme.of(context).colorScheme.onSurface.withAlpha(20),
                highlightColor:
                    Theme.of(context).colorScheme.onSurface.withAlpha(50),
                child: Container(
                  height: height,
                  width: width,
                  decoration: ShapeDecoration(
                      color: Theme.of(context).primaryColor,
                      shape: RoundedRectangleBorder()),
                ),
              ),
              errorWidget: (context, url, error) => Container(
                  width: width,
                  height: height,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: BorderRadius.circular(13),
                  ),
                  child: Icon(
                    Icons.person,
                    size: iconSize,
                    color: Colors.grey.withValues(alpha: 0.7),
                  )),
            ),
    );
  }
}
