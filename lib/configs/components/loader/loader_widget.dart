import 'package:flutter/material.dart';

import '../../config.dart';

class LoaderWidget extends StatefulWidget {
  final String? message;

  const LoaderWidget({super.key, this.message});

  @override
  State<LoaderWidget> createState() => _LoaderWidgetState();
}

class _LoaderWidgetState extends State<LoaderWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      height: 80,
      child: Column(
        children: [
          Text(
            widget.message ?? S.current.loading,
            // widget.message ?? 'Loading...',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const SizedBox(height: 10),
          const LinearProgressIndicator(),
        ],
      ),
    );
  }
}
