import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

/// A widget representing the email inputs field.
class ShimmerList extends StatelessWidget {
  const ShimmerList({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.builder(
      primary: false,
      physics: ClampingScrollPhysics(),
      padding: EdgeInsets.fromLTRB(20, 5, 20, 20),
      itemCount: 10,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Shimmer.fromColors(
          baseColor: Theme.of(context).colorScheme.onSurface.withAlpha(20),
          highlightColor: Theme.of(context).colorScheme.onSurface.withAlpha(50),
          child: Container(
            height: 35,
            margin: EdgeInsets.all(5),
            decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.surface,
                borderRadius: BorderRadius.circular(8)),
          ),
        );
      },
    );
  }
}
