import 'package:flutter/material.dart';
import 'package:quotanic/configs/config.dart';

class FullScreenImage extends StatelessWidget {
  const FullScreenImage({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 15, top: 15),
              child: CircleAvatar(
                backgroundColor: Theme.of(context).colorScheme.surface,
                child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.close,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
                ),
              ),
            )
          ],
        ),
        body: InteractiveViewer(
          // boundaryMargin: EdgeInsets.zero,
          minScale: 0.5, // Minimum scale (zoom out)
          maxScale: 5.0, // Maximum scale (zoom in)
          child: NetworkImageWidget(
            imageUrl: image,
            height: 100.h,
            width: 100.w,
            boxFit: BoxFit.scaleDown,
          ),
        ));
  }
}
