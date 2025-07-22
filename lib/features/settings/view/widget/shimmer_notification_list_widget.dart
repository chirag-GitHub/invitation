import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

import '../../../../configs/config.dart';

/// A widget representing the email inputs field.
class ShimmerNotificationListWidget extends StatelessWidget {
  const ShimmerNotificationListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GridView.builder(
      primary: false,
      physics: ClampingScrollPhysics(),
      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: size.width / 0.5 / (16.h),
        crossAxisCount: 1,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      itemCount: 10,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          spacing: 10,
          children: [
            SizedBox(
              width: 80,
              height: 15,
              child: Shimmer.fromColors(
                baseColor:
                    Theme.of(context).colorScheme.onSurface.withAlpha(20),
                highlightColor:
                    Theme.of(context).colorScheme.onSurface.withAlpha(50),
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      borderRadius: BorderRadius.circular(2)),
                ),
              ),
            ),
            Expanded(
              child: Shimmer.fromColors(
                baseColor:
                    Theme.of(context).colorScheme.onSurface.withAlpha(20),
                highlightColor:
                    Theme.of(context).colorScheme.onSurface.withAlpha(50),
                child: Container(
                  decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.surface,
                      borderRadius: BorderRadius.circular(8)),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
