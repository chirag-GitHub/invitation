import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../../../../configs/config.dart';

/// A widget representing the email inputs field.
class ShimmerWidget extends StatelessWidget {
  const ShimmerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return GridView.builder(
      primary: false,
      physics: ClampingScrollPhysics(),
      padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: size.width / 2 / (16.h),
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      itemCount: 6,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Shimmer.fromColors(
          baseColor: Theme.of(context).colorScheme.onSurface.withAlpha(20),
          highlightColor: Theme.of(context).colorScheme.onSurface.withAlpha(50),
          child: Container(
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(8)),
          ),
        );
      },
    );
  }
}
